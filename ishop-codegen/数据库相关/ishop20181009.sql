/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : ipady

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-10-09 17:43:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for firm_base_customer
-- ----------------------------
DROP TABLE IF EXISTS `firm_base_customer`;
CREATE TABLE `firm_base_customer` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户名称',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别："G_S"-原粮供应商；"G_P"-原粮收购商；"BAG_S"-包装袋供应商；"BOX_S"-箱子供应商；"R_S"-大米供应商；"R_P"-大米经销商；"B_P"-副产品收购商；"T_S"-第三方服务商；"C_C"-普通客户；',
  `MOBILE_PHONE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号',
  `CONTACT_PHONE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系地址',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：客户基础信息表';

-- ----------------------------
-- Records of firm_base_customer
-- ----------------------------

-- ----------------------------
-- Table structure for firm_base_depot
-- ----------------------------
DROP TABLE IF EXISTS `firm_base_depot`;
CREATE TABLE `firm_base_depot` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库名称',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库类型：1-原粮仓库，2-包装袋/箱子仓库，3-大米仓库，4-其他仓库，5-大米退货仓库',
  `IS_DEFAULT` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否是默认仓库：0-非默认，1-默认',
  `CONTACT_PHONE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：仓库基础信息表';

-- ----------------------------
-- Records of firm_base_depot
-- ----------------------------

-- ----------------------------
-- Table structure for firm_base_product
-- ----------------------------
DROP TABLE IF EXISTS `firm_base_product`;
CREATE TABLE `firm_base_product` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `PACKAGE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装ID',
  `PACKAGE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装名称',
  `PACKAGE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装类型：1-普通装，2-真空装',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `CAPACITY` decimal(13,1) DEFAULT NULL COMMENT '容量规格（斤）',
  `BARCODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '条形码号',
  `OUTER_PACKAGE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外包装袋ID，真空包装袋时有效',
  `OUTER_PACKAGE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外包装袋Name，真空包装袋时有效',
  `OUTER_PACKAGE_NUM` decimal(12,0) DEFAULT NULL COMMENT '外包装袋数量，真空包装袋时有效',
  `MATERIAL_A_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料A ID',
  `MATERIAL_A_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料A Name',
  `MATERIAL_A_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料A 类型：1-原粮，2-副产品',
  `MATERIAL_A_RATE` decimal(5,2) DEFAULT NULL COMMENT '配料A 比例',
  `MATERIAL_B_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料B ID',
  `MATERIAL_B_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料B Name',
  `MATERIAL_B_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料B 类型：1-原粮，2-副产品',
  `MATERIAL_B_RATE` decimal(5,2) DEFAULT NULL COMMENT '配料B 比例',
  `MATERIAL_C_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料C ID',
  `MATERIAL_C_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料C Name',
  `MATERIAL_C_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料C 类型：1-原粮，2-副产品',
  `MATERIAL_C_RATE` decimal(5,2) DEFAULT NULL COMMENT '配料C 比例',
  `MATERIAL_D_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料D ID',
  `MATERIAL_D_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料D Name',
  `MATERIAL_D_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料D 类型：1-原粮，2-副产品',
  `MATERIAL_D_RATE` decimal(5,2) DEFAULT NULL COMMENT '配料D 比例',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：产品基础信息表';

-- ----------------------------
-- Records of firm_base_product
-- ----------------------------

-- ----------------------------
-- Table structure for firm_base_truckage_config
-- ----------------------------
DROP TABLE IF EXISTS `firm_base_truckage_config`;
CREATE TABLE `firm_base_truckage_config` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `WEIGHT` decimal(10,1) DEFAULT NULL COMMENT '产品单包重量(斤)',
  `TRUCKAGE_UNIT` decimal(10,1) DEFAULT NULL COMMENT '搬运费单价(元/吨)',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='搬运费配置表';

-- ----------------------------
-- Records of firm_base_truckage_config
-- ----------------------------

-- ----------------------------
-- Table structure for firm_byproduct_base
-- ----------------------------
DROP TABLE IF EXISTS `firm_byproduct_base`;
CREATE TABLE `firm_byproduct_base` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '副产品名称',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：副产品基础信息';

-- ----------------------------
-- Records of firm_byproduct_base
-- ----------------------------

-- ----------------------------
-- Table structure for firm_byproduct_sales
-- ----------------------------
DROP TABLE IF EXISTS `firm_byproduct_sales`;
CREATE TABLE `firm_byproduct_sales` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `DEALER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商ID',
  `DEALER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商Name',
  `SALES_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '销售时间',
  `TRUCK_NO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `TOTAL_WEIGHT` decimal(20,2) DEFAULT NULL COMMENT '总重量',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `GROSS_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '毛利润',
  `NET_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '本单利润',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：状态：1-草稿；2-未确认；3-已确认，未付款；4-部分付款；5：已结清；6：已取消；',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：副产品销售单';

-- ----------------------------
-- Records of firm_byproduct_sales
-- ----------------------------

-- ----------------------------
-- Table structure for firm_byproduct_sales_need
-- ----------------------------
DROP TABLE IF EXISTS `firm_byproduct_sales_need`;
CREATE TABLE `firm_byproduct_sales_need` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SALES_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售单ID',
  `NEED_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消耗品类型：1-原粮，2-包装袋，3-箱子',
  `NEED_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消耗品ID',
  `NEED_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消耗品Name',
  `NEED_NUM` decimal(12,0) DEFAULT NULL COMMENT '消耗品数量',
  `DEPOT_A_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库A ID',
  `DEPOT_A_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库A Name',
  `DEPOT_A_NUM` decimal(12,0) DEFAULT NULL COMMENT '仓库A 扣除数量',
  `AVERAGE_PRICE_A` decimal(16,5) DEFAULT NULL COMMENT '仓库A均价（元）',
  `DEPOT_B_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库B ID',
  `DEPOT_B_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库B Name',
  `DEPOT_B_NUM` decimal(12,0) DEFAULT NULL COMMENT '仓库B 扣除数量',
  `AVERAGE_PRICE_B` decimal(16,5) DEFAULT NULL COMMENT '仓库B均价（元）',
  `DEPOT_C_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库C ID',
  `DEPOT_C_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库C Name',
  `DEPOT_C_NUM` decimal(12,0) DEFAULT NULL COMMENT '仓库C 扣除数量',
  `AVERAGE_PRICE_C` decimal(16,5) DEFAULT NULL COMMENT '仓库C均价（元）',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂：副产品销售消耗品详情';

-- ----------------------------
-- Records of firm_byproduct_sales_need
-- ----------------------------

-- ----------------------------
-- Table structure for firm_byproduct_sales_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_byproduct_sales_row`;
CREATE TABLE `firm_byproduct_sales_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SALES_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售单ID',
  `BYPRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '副产品ID',
  `BYPRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '副产品Name',
  `ALL_WEIGHT` decimal(12,0) DEFAULT NULL COMMENT '车货总重量（公斤）',
  `CAR_WEIGHT` decimal(12,0) DEFAULT NULL COMMENT '车重（公斤）',
  `WEIGHT` decimal(12,0) DEFAULT NULL COMMENT '副产品净重（公斤）',
  `UNIT` decimal(20,2) DEFAULT NULL COMMENT '单价',
  `SUBTOTAL` decimal(20,2) DEFAULT NULL COMMENT '小计',
  `PACKAGE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装ID',
  `PACKAGE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装Name',
  `PACKAGE_NUMBER` decimal(12,0) DEFAULT NULL COMMENT '包装数量',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：副产品销售单动态行';

-- ----------------------------
-- Records of firm_byproduct_sales_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_capital_advance
-- ----------------------------
DROP TABLE IF EXISTS `firm_capital_advance`;
CREATE TABLE `firm_capital_advance` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型：INTO-对方支付，OUT-支付给对方',
  `AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `PERSON_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对方类别："ON-F"-联网-加工厂；"ON-D"-联网-经销商；"ON-T"-联网-第三方；"OP-G_S"-自建-原粮供应商；"OP-G_P"-自建-原粮收购商；"OP-BAG_S"-自建-包装袋供应商；"OP-BOX_S"-自建-箱子供应商；"OP-R_S"-自建-大米供应商；"OP-R_P"-自建-大米经销商；"OP-B_P"-自建-副产品收购商；"OP-T_S"-自建-第三方服务商；"OP-C_C"-自建-普通客户；',
  `PERSON_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对方ID',
  `PERSON_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对方Name',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：UN-未确认，CON-已确认',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资金管理：预收付款表';

-- ----------------------------
-- Records of firm_capital_advance
-- ----------------------------

-- ----------------------------
-- Table structure for firm_capital_bank_card
-- ----------------------------
DROP TABLE IF EXISTS `firm_capital_bank_card`;
CREATE TABLE `firm_capital_bank_card` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `USER_NAME` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '开户名',
  `BANK_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '银行类型',
  `BANK_NO` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '银行卡号',
  `AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资金管理：银行卡表';

-- ----------------------------
-- Records of firm_capital_bank_card
-- ----------------------------

-- ----------------------------
-- Table structure for firm_capital_cash_bag
-- ----------------------------
DROP TABLE IF EXISTS `firm_capital_cash_bag`;
CREATE TABLE `firm_capital_cash_bag` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资金管理：现金袋表';

-- ----------------------------
-- Records of firm_capital_cash_bag
-- ----------------------------

-- ----------------------------
-- Table structure for firm_capital_exchange_list
-- ----------------------------
DROP TABLE IF EXISTS `firm_capital_exchange_list`;
CREATE TABLE `firm_capital_exchange_list` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `CAPITAL_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资金类型，27种类型',
  `EXCHANGE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收付款类型：GAIN-收款，PAY-付款',
  `EXCHANGE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '交易日期(采购/销售日期）',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源类型："LOCAL"-自建，"ONLINE"-客户',
  `FROM_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源客户ID',
  `FROM_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源客户Name',
  `ORDER_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单类型：GP-原粮采购；GS-原粮销售；PP-包装袋采购；BP-箱子采购；RS-大米销售；RR-大米销售退货；RP-大米采购；PR-大米采购退货；BS-副产品销售；',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `ORDER_NO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单号',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：ESI-等待对账，ESS-单方对完账，ESU-对账完毕（未付款），ESP-部分付款，ESC-已结清',
  `AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '交易总金额',
  `PAID_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '已支付总金额',
  `SURPLUS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '剩余未结清金额',
  `COUNT_FIELD` decimal(20,2) DEFAULT NULL COMMENT '统计字段',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资金管理：收付款单';

-- ----------------------------
-- Records of firm_capital_exchange_list
-- ----------------------------

-- ----------------------------
-- Table structure for firm_capital_exchange_record
-- ----------------------------
DROP TABLE IF EXISTS `firm_capital_exchange_record`;
CREATE TABLE `firm_capital_exchange_record` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `TRADE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易类型：业务内，资金周转及预付款等49种类型',
  `TRADE_MODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方式：CBC-银行卡，CCB-现金袋，CTP-第三方，CAC-预付款',
  `MODE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易细数类别：银行卡类别和第三方类别',
  `TRADE_CARD_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易银行卡/第三方指向ID',
  `TRADE_CARD_NO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易银行卡/第三方账号',
  `TRADE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '交易时间',
  `ORDER_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单类型：GP-原粮采购；GS-原粮销售；PP-包装袋采购；BP-箱子采购；RS-大米销售；RR-大米销售退货；RP-大米采购；PR-大米采购退货；BS-副产品销售；',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `ORDER_NO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单号',
  `TRADE_NUM` decimal(20,2) DEFAULT NULL COMMENT '交易扣款金额',
  `BEFORE_NUM` decimal(20,2) DEFAULT NULL COMMENT '交易前金额',
  `ACTUAL_NUM` decimal(20,2) DEFAULT NULL COMMENT '实际交易金额',
  `AFTER_NUM` decimal(20,2) DEFAULT NULL COMMENT '交易后金额',
  `ASSOCIATE_USER_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方类别',
  `ASSOCIATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方ID',
  `ASSOCIATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方Name',
  `ASSOCIATE_USER_PHONE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方电话',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：0：交易失败，1：交易成功',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资金管理：交易记录';

-- ----------------------------
-- Records of firm_capital_exchange_record
-- ----------------------------

-- ----------------------------
-- Table structure for firm_capital_exchange_settle
-- ----------------------------
DROP TABLE IF EXISTS `firm_capital_exchange_settle`;
CREATE TABLE `firm_capital_exchange_settle` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `EXCHANGE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '结算类型：GAIN-收款，PAY-付款',
  `CAPITAL_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资金类型，27种类型',
  `ASSOCIATE_USER_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方类别',
  `ASSOCIATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方ID',
  `ASSOCIATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方Name',
  `AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '交易总金额',
  `SURPLUS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '未付金额',
  `PAID_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '已付金额',
  `WITHHOLD_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '扣款金额',
  `ADVANCE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '预付款支付金额',
  `PAYMENT_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '实付金额',
  `EXCHANGE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结算时间',
  `DETAILS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资金管理：交易结算';

-- ----------------------------
-- Records of firm_capital_exchange_settle
-- ----------------------------

-- ----------------------------
-- Table structure for firm_capital_exchange_settle_d
-- ----------------------------
DROP TABLE IF EXISTS `firm_capital_exchange_settle_d`;
CREATE TABLE `firm_capital_exchange_settle_d` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SETTLE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易结算ID',
  `EXCHANGE_LIST_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收付款单ID',
  `RECORD_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易记录ID',
  `ORDER_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单类型：GP-原粮采购；GS-原粮销售；PP-包装袋采购；BP-箱子采购；RS-大米销售；RR-大米销售退货；RP-大米采购；PR-大米采购退货；BS-副产品销售；',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `ORDER_NO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单号',
  `TRADE_MODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方式：CBC-银行卡，CCB-现金袋，CTP-第三方，CAC-预付款',
  `MODE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易细数类别：银行卡类别和第三方类别',
  `TRADE_CARD_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易银行卡/第三方指向ID',
  `TRADE_CARD_NO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易银行卡/第三方账号',
  `AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '交易总金额',
  `SURPLUS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '未付金额',
  `PAID_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '已付金额',
  `WITHHOLD_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '扣款金额',
  `PAYMENT_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '实付金额',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资金管理：交易结算细则';

-- ----------------------------
-- Records of firm_capital_exchange_settle_d
-- ----------------------------

-- ----------------------------
-- Table structure for firm_capital_exchange_settle_r
-- ----------------------------
DROP TABLE IF EXISTS `firm_capital_exchange_settle_r`;
CREATE TABLE `firm_capital_exchange_settle_r` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SETTLE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易结算ID',
  `TRADE_MODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方式：CBC-银行卡，CCB-现金袋，CTP-第三方，CAC-预付款',
  `MODE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易细数类别：银行卡类别和第三方类别',
  `TRADE_CARD_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易银行卡/第三方指向ID',
  `TRADE_CARD_NO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易银行卡/第三方账号',
  `EXCHANGE_NUM` decimal(20,2) DEFAULT NULL COMMENT '交易金额',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资金管理：交易结算扣除或支付总明细';

-- ----------------------------
-- Records of firm_capital_exchange_settle_r
-- ----------------------------

-- ----------------------------
-- Table structure for firm_capital_third_party
-- ----------------------------
DROP TABLE IF EXISTS `firm_capital_third_party`;
CREATE TABLE `firm_capital_third_party` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型：CTW-微信，CTA支付宝，CTW-其他',
  `AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `NO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账号',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资金管理：第三方表（微信、支付宝等）';

-- ----------------------------
-- Records of firm_capital_third_party
-- ----------------------------

-- ----------------------------
-- Table structure for firm_change_stock
-- ----------------------------
DROP TABLE IF EXISTS `firm_change_stock`;
CREATE TABLE `firm_change_stock` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `BEFORE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更换前名称',
  `AFTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更换后名称',
  `CHANGE_FEE` decimal(20,2) DEFAULT NULL COMMENT '加工费用',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='大米加工记录表';

-- ----------------------------
-- Records of firm_change_stock
-- ----------------------------

-- ----------------------------
-- Table structure for firm_change_stock_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_change_stock_row`;
CREATE TABLE `firm_change_stock_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `STOCK_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '加工记录ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `CHANGE_NUM` decimal(12,0) DEFAULT NULL COMMENT '更换数量',
  `CHANGE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更换类型：OUT-更换前；INTO-更换后；',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='大米加工记录动态行';

-- ----------------------------
-- Records of firm_change_stock_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_company
-- ----------------------------
DROP TABLE IF EXISTS `firm_company`;
CREATE TABLE `firm_company` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `NAME` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公司企业名',
  `COMPANY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公司类型：1 大米加工厂 2 粮食经销商  3 第三方服务商',
  `ICON_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '企业图标ID',
  `CONTACTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系人',
  `CONTACT_NUMBER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公司地址',
  `FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传真',
  `REGISTERED_NO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注册工号',
  `REGISTERED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `REGISTERED_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注册地址',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '简介',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公司企业表';

-- ----------------------------
-- Records of firm_company
-- ----------------------------

-- ----------------------------
-- Table structure for firm_company_licence
-- ----------------------------
DROP TABLE IF EXISTS `firm_company_licence`;
CREATE TABLE `firm_company_licence` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '证书名称',
  `LISENCE_AUTHORITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发放机构',
  `EFF_BEGIN_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生效日期',
  `EFF_END_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '失效日期',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '证书类别：1：企业基本资格证书；2：企业荣誉证书',
  `PIC_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片ID',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公司企业——许可表';

-- ----------------------------
-- Records of firm_company_licence
-- ----------------------------

-- ----------------------------
-- Table structure for firm_company_photo
-- ----------------------------
DROP TABLE IF EXISTS `firm_company_photo`;
CREATE TABLE `firm_company_photo` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `GROUP_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属分组ID',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '照片名称',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '相册类型：1-公司厂房，2-机械设备，3-团队风采',
  `PIC_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '照片ID',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公司企业——图册表';

-- ----------------------------
-- Records of firm_company_photo
-- ----------------------------

-- ----------------------------
-- Table structure for firm_company_photo_group
-- ----------------------------
DROP TABLE IF EXISTS `firm_company_photo_group`;
CREATE TABLE `firm_company_photo_group` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分组名字',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业相册分组配置';

-- ----------------------------
-- Records of firm_company_photo_group
-- ----------------------------

-- ----------------------------
-- Table structure for firm_company_product
-- ----------------------------
DROP TABLE IF EXISTS `firm_company_product`;
CREATE TABLE `firm_company_product` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `GROUP_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分组ID',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `UNIT` decimal(10,0) DEFAULT NULL COMMENT '产品单价',
  `PIC_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片ID',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公司企业——产品表';

-- ----------------------------
-- Records of firm_company_product
-- ----------------------------

-- ----------------------------
-- Table structure for firm_company_product_group
-- ----------------------------
DROP TABLE IF EXISTS `firm_company_product_group`;
CREATE TABLE `firm_company_product_group` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分组名称',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业产品分组配置';

-- ----------------------------
-- Records of firm_company_product_group
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_product
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_product`;
CREATE TABLE `firm_dealer_product` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SOURCE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品来源："LOCAL"-自建；"ONLINE"-好友；',
  `BANNED` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上一级是否被禁用：0-禁用，1-正常',
  `SUPPLIER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商ID',
  `SUPPLIER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商Name',
  `SUPPLIER_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商类别：F-加工厂，D-经销商',
  `SUPPLIER_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商所属公司ID',
  `SUPPLIER_PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商对应产品ID',
  `ABBR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '简称',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `PRODUCT_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品编号',
  `CAPACITY` decimal(13,1) DEFAULT NULL COMMENT '容量规格（斤）',
  `BARCODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '条形码号',
  `SAFETY_STOCK` decimal(12,0) DEFAULT NULL COMMENT '安全库存（包）',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='供应商产品表';

-- ----------------------------
-- Records of firm_dealer_product
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_purchase
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_purchase`;
CREATE TABLE `firm_dealer_purchase` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `SUPPLIER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商ID',
  `SUPPLIER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商Name',
  `PURCHASE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '采购时间',
  `RECEIPT_DATE` timestamp NULL DEFAULT NULL COMMENT '收货时间',
  `PURCHASE_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `TOTAL_COUNT` decimal(12,0) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商/加工厂；"ONLINE"-好友经销商/加工厂；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：1-草稿；4O-订单；5-已发货；6-已收货；7S-自己对账完毕；7O-对方对账完毕；8-对完账-待收款；9-部分付款；10：已结清；11：已取消；',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `HAS_DISTRIBUTION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否包含分销数据：true/false',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经销商：大米采购单';

-- ----------------------------
-- Records of firm_dealer_purchase
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_purchase_return
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_purchase_return`;
CREATE TABLE `firm_dealer_purchase_return` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `DEALER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商ID',
  `DEALER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商Name',
  `RETURN_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '退货时间',
  `RETURN_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退货地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `TOTAL_COUNT` decimal(12,0) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `GROSS_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '毛利润',
  `NET_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '本单利润',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商/加工厂；"ONLINE"-好友经销商/加工厂；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：0-待退货，1-已退货',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经销商：大米采购退货单';

-- ----------------------------
-- Records of firm_dealer_purchase_return
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_purchase_return_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_purchase_return_row`;
CREATE TABLE `firm_dealer_purchase_return_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `RETURN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退货单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '单包重量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '退货数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经销商：大米采购退货单动态行';

-- ----------------------------
-- Records of firm_dealer_purchase_return_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_purchase_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_purchase_row`;
CREATE TABLE `firm_dealer_purchase_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `PURCHASE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '采购单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '单包重量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `TRUCK_POSITION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '装车位置：0-无要求，1-车头，2-车尾，3-车底，4-车顶，5-按订单顺序',
  `IS_INTO` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否是入库数据：true/false',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经销商：大米采购单动态行';

-- ----------------------------
-- Records of firm_dealer_purchase_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_sales
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_sales`;
CREATE TABLE `firm_dealer_sales` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `CUSTOM_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户ID',
  `CUSTOM_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户Name',
  `SALES_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '销售时间',
  `SALES_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `DEDUCTION_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '抵扣金额',
  `TOTAL_COUNT` decimal(20,2) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `GROSS_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '毛利润',
  `NET_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '本单利润',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商；"ONLINE"-好友经销商；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：1-草稿；4O-订单；5-已发货；6-已收货；7S-自己对账完毕；7O-对方对账完毕；8-对完账-待收款；9-部分付款；10：已结清；11：已取消；',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `HAS_PASSING` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否包含过车 ：true/flase',
  `PASSING_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '过车采购单ID',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经销商：大米销售单';

-- ----------------------------
-- Records of firm_dealer_sales
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_sales_return
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_sales_return`;
CREATE TABLE `firm_dealer_sales_return` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `DEALER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商ID',
  `DEALER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商Name',
  `RETURN_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '退货时间',
  `RETURN_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退货地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `TOTAL_COUNT` decimal(12,0) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商；"ONLINE"-好友经销商；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：0-待退货，1-已退货',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `DEDUCTION_SALES_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '抵扣销售单ID',
  `IS_DEDUCTION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否用于抵扣 1：是 0：不是',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经销商：大米销售退货单';

-- ----------------------------
-- Records of firm_dealer_sales_return
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_sales_return_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_sales_return_row`;
CREATE TABLE `firm_dealer_sales_return_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `RETURN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退货单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '单包重量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '退货数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经销商：大米销售退货单动态行';

-- ----------------------------
-- Records of firm_dealer_sales_return_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_sales_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_sales_row`;
CREATE TABLE `firm_dealer_sales_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SALES_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '单包重量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价（元/吨）',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `TRUCK_POSITION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '装车位置：0-无要求，1-车头，2-车尾，3-车底，4-车顶，5-按订单顺序',
  `IS_FILLED` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否被用作快速下单：0-否，1-是',
  `IS_PASSING` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否是过车数据：true/false',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：大米销售单动态行';

-- ----------------------------
-- Records of firm_dealer_sales_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_stock
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_stock`;
CREATE TABLE `firm_dealer_stock` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `RICE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大米ID',
  `RICE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大米Name',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `STOCK_NUM` decimal(12,0) DEFAULT NULL COMMENT '当前库存数',
  `SAFETY_STOCK` decimal(12,0) DEFAULT NULL COMMENT '安全库存数',
  `AVERAGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '采购均价（元）',
  `SAFETY_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库存标记：0-库存提醒，1-库存安全',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经销商：大米库存';

-- ----------------------------
-- Records of firm_dealer_stock
-- ----------------------------

-- ----------------------------
-- Table structure for firm_dealer_stock_list
-- ----------------------------
DROP TABLE IF EXISTS `firm_dealer_stock_list`;
CREATE TABLE `firm_dealer_stock_list` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `RICE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大米ID',
  `RICE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大米Name',
  `LIST_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流水类型：II-初始化入库，AI-库存调整入库，AO-库存调整出库，PI-采购入库，PMI-采购修改入库，PMO-采购修改出库，SO-销售出库，SMI-销售修改入库，SMO-销售修改出库，RO-退货出库，RMI-退货修改入库，RMO-退货修改出库，BRI-被退货入库，BRMI-被退货修改入库，BRMO-被退货修改出库，DI-扣米入库，DO-扣米出库',
  `BEFORE_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作前数量',
  `AFTER_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作后数量',
  `CHANGE_NUM` decimal(12,0) DEFAULT NULL COMMENT '变化数量',
  `BEFORE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作前均价',
  `AFTER_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作后均价',
  `CHANGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '均价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `REASON` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库调原因',
  `PURCHASE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流水单号',
  `OPERATING_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `OPERATOR_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人ID',
  `OPERATOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经销商：大米出入库流水';

-- ----------------------------
-- Records of firm_dealer_stock_list
-- ----------------------------

-- ----------------------------
-- Table structure for firm_driver
-- ----------------------------
DROP TABLE IF EXISTS `firm_driver`;
CREATE TABLE `firm_driver` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `NAME` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机姓名',
  `PHONE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机手机号',
  `TRUCK_NO` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `SEX` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别：1-男，2-女',
  `NATION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '民族/国家',
  `ID_NO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `ID_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证地址',
  `SPARE_PHONE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备用手机',
  `COMPANY` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：司机信息';

-- ----------------------------
-- Records of firm_driver
-- ----------------------------

-- ----------------------------
-- Table structure for firm_factory_rice_return
-- ----------------------------
DROP TABLE IF EXISTS `firm_factory_rice_return`;
CREATE TABLE `firm_factory_rice_return` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `DEALER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商ID',
  `DEALER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商Name',
  `RETURN_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '退货时间',
  `RETURN_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退货地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `TOTAL_COUNT` decimal(12,0) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商；"ONLINE"-好友经销商；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：0-待退货，1-已退货',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：大米退货单';

-- ----------------------------
-- Records of firm_factory_rice_return
-- ----------------------------

-- ----------------------------
-- Table structure for firm_factory_rice_return_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_factory_rice_return_row`;
CREATE TABLE `firm_factory_rice_return_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `RETURN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退货单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '单包重量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '退货数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂：大米退货单动态行';

-- ----------------------------
-- Records of firm_factory_rice_return_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_factory_rice_sales
-- ----------------------------
DROP TABLE IF EXISTS `firm_factory_rice_sales`;
CREATE TABLE `firm_factory_rice_sales` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `DEALER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商ID',
  `DEALER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商Name',
  `SALES_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '销售时间',
  `SALES_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `TOTAL_COUNT` decimal(12,0) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(10,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `GROSS_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '毛利润',
  `NET_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '本单利润',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商；"ONLINE"-好友经销商；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：1-草稿；4O-订单；AD-预收货；5-已发货；6-已收货；7S-自己对账完毕；7O-对方对账完毕；8-对完账-待收款；9-部分付款；10：已结清；11：已取消；',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：大米销售单';

-- ----------------------------
-- Records of firm_factory_rice_sales
-- ----------------------------

-- ----------------------------
-- Table structure for firm_factory_rice_sales_need
-- ----------------------------
DROP TABLE IF EXISTS `firm_factory_rice_sales_need`;
CREATE TABLE `firm_factory_rice_sales_need` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SALES_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售单ID',
  `NEED_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消耗品类型：0-原粮，1-普通 包装袋，2-真空 包装袋，3-箱子，4-副产品',
  `NEED_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消耗品ID',
  `NEED_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消耗品Name',
  `NEED_NUM` decimal(12,0) DEFAULT NULL COMMENT '消耗品数量',
  `ENOUGH_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库存选择是否足够标记：0-不足，1-足够',
  `RATE` decimal(3,0) DEFAULT NULL COMMENT '原料扣除比例',
  `DEPOT_A_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库A ID',
  `DEPOT_A_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库A Name',
  `DEPOT_A_NUM` decimal(12,0) DEFAULT NULL COMMENT '仓库A 扣除数量',
  `AVERAGE_PRICE_A` decimal(16,5) DEFAULT NULL COMMENT '仓库A均价（元）',
  `DEPOT_B_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库B ID',
  `DEPOT_B_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库B Name',
  `DEPOT_B_NUM` decimal(12,0) DEFAULT NULL COMMENT '仓库B 扣除数量',
  `AVERAGE_PRICE_B` decimal(16,5) DEFAULT NULL COMMENT '仓库B均价（元）',
  `DEPOT_C_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库C ID',
  `DEPOT_C_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库C Name',
  `DEPOT_C_NUM` decimal(12,0) DEFAULT NULL COMMENT '仓库C 扣除数量',
  `AVERAGE_PRICE_C` decimal(16,5) DEFAULT NULL COMMENT '仓库C均价（元）',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂：大米销售消耗品详情';

-- ----------------------------
-- Records of firm_factory_rice_sales_need
-- ----------------------------

-- ----------------------------
-- Table structure for firm_factory_rice_sales_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_factory_rice_sales_row`;
CREATE TABLE `firm_factory_rice_sales_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SALES_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '净含量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `MATERIAL_A_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料A ID',
  `MATERIAL_A_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料A Name',
  `MATERIAL_A_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料A 类型：1-原粮，2-副产品',
  `MATERIAL_A_RATE` decimal(5,2) DEFAULT NULL COMMENT '配料A 比例',
  `MATERIAL_B_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料B ID',
  `MATERIAL_B_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料B Name',
  `MATERIAL_B_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料B 类型：1-原粮，2-副产品',
  `MATERIAL_B_RATE` decimal(5,2) DEFAULT NULL COMMENT '配料B 比例',
  `MATERIAL_C_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料C ID',
  `MATERIAL_C_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料C Name',
  `MATERIAL_C_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料C 类型：1-原粮，2-副产品',
  `MATERIAL_C_RATE` decimal(5,2) DEFAULT NULL COMMENT '配料C 比例',
  `MATERIAL_D_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料D ID',
  `MATERIAL_D_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料D Name',
  `MATERIAL_D_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配料D 类型：1-原粮，2-副产品',
  `MATERIAL_D_RATE` decimal(5,2) DEFAULT NULL COMMENT '配料D 比例',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCK_POSITION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '装车位置：0-无要求，1-车头，2-车尾，3-车底，4-车顶，5-按订单顺序',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：大米销售单动态行';

-- ----------------------------
-- Records of firm_factory_rice_sales_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_grain_base
-- ----------------------------
DROP TABLE IF EXISTS `firm_grain_base`;
CREATE TABLE `firm_grain_base` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `NAME` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮名称',
  `RICE_RATE` decimal(5,2) DEFAULT NULL COMMENT '精米率',
  `SAFETY_STOCK` decimal(12,0) DEFAULT NULL COMMENT '安全库存',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：原粮基础信息';

-- ----------------------------
-- Records of firm_grain_base
-- ----------------------------

-- ----------------------------
-- Table structure for firm_grain_purchase
-- ----------------------------
DROP TABLE IF EXISTS `firm_grain_purchase`;
CREATE TABLE `firm_grain_purchase` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `SUPPLIER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商ID',
  `SUPPLIER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商Name',
  `PURCHASE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '采购类型：',
  `PURCHASE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '采购时间',
  `TRUCK_NO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `QUALITY_RULE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款计算法则：0-手输，1-计算',
  `MOISTRUE_RATE` decimal(5,2) DEFAULT NULL COMMENT '超额水分比例',
  `MOISTRUE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '超额水分单价',
  `IMPURITY_RATE` decimal(5,2) DEFAULT NULL COMMENT '杂质比例',
  `IMPURITY_UNIT` decimal(20,2) DEFAULT NULL COMMENT '杂质单价',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `TOTAL_WEIGHT` decimal(20,2) DEFAULT NULL COMMENT '总重量',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：1-草稿；2-未确认；3-已确认，未付款；4-部分付款；5：已结清；6：已取消；',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：原粮采购单';

-- ----------------------------
-- Records of firm_grain_purchase
-- ----------------------------

-- ----------------------------
-- Table structure for firm_grain_purchase_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_grain_purchase_row`;
CREATE TABLE `firm_grain_purchase_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `PURCHASE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '采购单ID',
  `PURCHASE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型：',
  `GRAIN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮ID',
  `GRAIN_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮Name',
  `ALL_WEIGHT` decimal(12,0) DEFAULT NULL COMMENT '车粮总重量（公斤）',
  `CAR_WEIGHT` decimal(12,0) DEFAULT NULL COMMENT '车重（公斤）',
  `WEIGHT` decimal(12,0) DEFAULT NULL COMMENT '粮食净重（公斤）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `SUBTOTAL` decimal(20,2) DEFAULT NULL COMMENT '小计',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：原粮采购单动态行';

-- ----------------------------
-- Records of firm_grain_purchase_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_grain_sales
-- ----------------------------
DROP TABLE IF EXISTS `firm_grain_sales`;
CREATE TABLE `firm_grain_sales` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `CUSTOM_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户ID',
  `CUSTOM_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户Name',
  `SALES_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '销售时间',
  `SALES_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售地址',
  `TRUCK_NO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `QUALITY_RULE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款计算法则：0-手输，1-计算',
  `MOISTRUE_RATE` decimal(5,2) DEFAULT NULL COMMENT '超额水分比例',
  `MOISTRUE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '超额水分单价',
  `IMPURITY_RATE` decimal(5,2) DEFAULT NULL COMMENT '杂质比例',
  `IMPURITY_UNIT` decimal(20,2) DEFAULT NULL COMMENT '杂质单价',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `TOTAL_COUNT` decimal(12,0) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(10,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `GROSS_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '毛利润',
  `NET_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '本单利润',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商；"ONLINE"-好友经销商；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：0-未登记(待确认)  1-已登记，2-保为草稿（加工厂自建），3-已发货，4-经销商已收货，5-自己对账完毕，6对完账-待收款，7-已收款，8-已取消',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：原粮销售单';

-- ----------------------------
-- Records of firm_grain_sales
-- ----------------------------

-- ----------------------------
-- Table structure for firm_grain_sales_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_grain_sales_row`;
CREATE TABLE `firm_grain_sales_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SALES_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售单ID',
  `SALES_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型：',
  `GRAIN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮ID',
  `GRAIN_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮Name',
  `ALL_WEIGHT` decimal(12,0) DEFAULT NULL COMMENT '车粮总重量（公斤）',
  `CAR_WEIGHT` decimal(12,0) DEFAULT NULL COMMENT '车重（公斤）',
  `WEIGHT` decimal(12,0) DEFAULT NULL COMMENT '粮食净重（公斤）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `SUBTOTAL` decimal(20,2) DEFAULT NULL COMMENT '小计',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：原粮销售单动态行';

-- ----------------------------
-- Records of firm_grain_sales_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_grain_stock
-- ----------------------------
DROP TABLE IF EXISTS `firm_grain_stock`;
CREATE TABLE `firm_grain_stock` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `GRAIN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮ID',
  `GRAIN_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮Name',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `STOCK_NUM` decimal(12,0) DEFAULT NULL COMMENT '当前库存数',
  `AVERAGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '采购均价（元）',
  `SAFETY_STOCK` decimal(12,0) DEFAULT NULL COMMENT '安全库存数',
  `SAFETY_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库存标记：0-库存提醒，1-库存安全',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：原粮库存';

-- ----------------------------
-- Records of firm_grain_stock
-- ----------------------------

-- ----------------------------
-- Table structure for firm_grain_stock_list
-- ----------------------------
DROP TABLE IF EXISTS `firm_grain_stock_list`;
CREATE TABLE `firm_grain_stock_list` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `GRAIN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮ID',
  `GRAIN_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮Name',
  `LIST_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流水类型：流水类型：II-初始化入库，AI-库存调整入库，AO-库存调整出库，PI-采购入库，PMI-采购修改入库，PMO-采购修改出库，SO-销售出库，SMI-销售修改入库，SMO-销售修改出库，RSO-大米销售出库，RSMI-大米销售修改入库，RSMO-大米销售修改出库',
  `BEFORE_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作前数量',
  `AFTER_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作后数量',
  `CHANGE_NUM` decimal(12,0) DEFAULT NULL COMMENT '变化数量',
  `BEFORE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作前均价',
  `AFTER_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作后均价',
  `CHANGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '均价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `REASON` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库调原因',
  `PURCHASE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流水单号',
  `OPERATING_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `OPERATOR_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人ID',
  `OPERATOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：原粮出入库流水';

-- ----------------------------
-- Records of firm_grain_stock_list
-- ----------------------------

-- ----------------------------
-- Table structure for firm_historical_form
-- ----------------------------
DROP TABLE IF EXISTS `firm_historical_form`;
CREATE TABLE `firm_historical_form` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `FORM_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表单ID',
  `FORM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表单类型',
  `FORM_CONTENT` longtext COLLATE utf8_unicode_ci COMMENT '表单内容',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业历史单据表';

-- ----------------------------
-- Records of firm_historical_form
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_grain_base
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_grain_base`;
CREATE TABLE `firm_mill_grain_base` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ABBR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '简称',
  `NAME` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮名称',
  `CAPACITY` decimal(13,1) DEFAULT NULL COMMENT '容量规格（斤）',
  `BARCODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '条形码号',
  `SAFETY_STOCK` decimal(12,0) DEFAULT NULL COMMENT '安全库存（包）',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)原粮基础信息表';

-- ----------------------------
-- Records of firm_mill_grain_base
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_grain_purchase
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_grain_purchase`;
CREATE TABLE `firm_mill_grain_purchase` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `SUPPLIER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商ID',
  `SUPPLIER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商Name',
  `PURCHASE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '采购时间',
  `RECEIPT_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '收货时间',
  `PURCHASE_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `TOTAL_COUNT` decimal(12,0) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商/加工厂；"ONLINE"-好友经销商/加工厂；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：1-草稿；4O-订单；5-已发货；6-已收货；7S-自己对账完毕；7O-对方对账完毕；8-对完账-待收款；9-部分付款；10：已结清；11：已取消；',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)原粮采购单';

-- ----------------------------
-- Records of firm_mill_grain_purchase
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_grain_purchase_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_grain_purchase_row`;
CREATE TABLE `firm_mill_grain_purchase_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `PURCHASE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '采购单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '单包重量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)原粮采购单动态行';

-- ----------------------------
-- Records of firm_mill_grain_purchase_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_grain_sales
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_grain_sales`;
CREATE TABLE `firm_mill_grain_sales` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `CUSTOM_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户ID',
  `CUSTOM_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户Name',
  `SALES_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '销售时间',
  `SALES_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `TOTAL_COUNT` decimal(20,2) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `GROSS_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '毛利润',
  `NET_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '本单利润',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商；"ONLINE"-好友经销商；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：1-草稿；4O-订单；5-已发货；6-已收货；7S-自己对账完毕；7O-对方对账完毕；8-对完账-待收款；9-部分付款；10：已结清；11：已取消；',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)原粮销售单';

-- ----------------------------
-- Records of firm_mill_grain_sales
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_grain_sales_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_grain_sales_row`;
CREATE TABLE `firm_mill_grain_sales_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SALES_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '单包重量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价（元/吨）',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)原粮销售单动态行';

-- ----------------------------
-- Records of firm_mill_grain_sales_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_grain_stock
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_grain_stock`;
CREATE TABLE `firm_mill_grain_stock` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `GRAIN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮ID',
  `GRAIN_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮Name',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `STOCK_NUM` decimal(12,0) DEFAULT NULL COMMENT '当前库存数',
  `SAFETY_STOCK` decimal(12,0) DEFAULT NULL COMMENT '安全库存数',
  `AVERAGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '采购均价（元）',
  `SAFETY_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库存标记：0-库存提醒，1-库存安全',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)原粮库存';

-- ----------------------------
-- Records of firm_mill_grain_stock
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_grain_stock_list
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_grain_stock_list`;
CREATE TABLE `firm_mill_grain_stock_list` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `GRAIN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮ID',
  `GRAIN_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原粮Name',
  `LIST_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流水类型：II-初始化入库，AI-库存调整入库，AO-库存调整出库，PI-采购入库，PMI-采购修改入库，PMO-采购修改出库，SO-销售出库，SMI-销售修改入库，SMO-销售修改出库，RSO-大米销售出库，RSMI-大米销售修改入库，RSMO-大米销售修改出库',
  `BEFORE_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作前数量',
  `AFTER_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作后数量',
  `CHANGE_NUM` decimal(12,0) DEFAULT NULL COMMENT '变化数量',
  `BEFORE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作前均价',
  `AFTER_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作后均价',
  `CHANGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '均价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `REASON` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库调原因',
  `PURCHASE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单号',
  `OPERATING_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `OPERATOR_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人ID',
  `OPERATOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)原粮出入库流水';

-- ----------------------------
-- Records of firm_mill_grain_stock_list
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_rice_sales
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_rice_sales`;
CREATE TABLE `firm_mill_rice_sales` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `CUSTOM_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户ID',
  `CUSTOM_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户Name',
  `SALES_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '销售时间',
  `SALES_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `TOTAL_COUNT` decimal(20,2) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `GROSS_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '毛利润',
  `NET_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '本单利润',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商；"ONLINE"-好友经销商；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：1-草稿；4O-订单；5-已发货；6-已收货；7S-自己对账完毕；7O-对方对账完毕；8-对完账-待收款；9-部分付款；10：已结清；11：已取消；',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)大米销售单';

-- ----------------------------
-- Records of firm_mill_rice_sales
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_rice_sales_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_rice_sales_row`;
CREATE TABLE `firm_mill_rice_sales_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `SALES_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '销售单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '单包重量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价（元/吨）',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `TRUCK_POSITION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '装车位置：0-无要求，1-车头，2-车位，3-车底，4-车顶，5-按订单顺序',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)大米销售单动态行';

-- ----------------------------
-- Records of firm_mill_rice_sales_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_rice_stock
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_rice_stock`;
CREATE TABLE `firm_mill_rice_stock` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `RICE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大米ID',
  `RICE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大米Name',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `STOCK_NUM` decimal(12,0) DEFAULT NULL COMMENT '当前库存数',
  `SAFETY_STOCK` decimal(12,0) DEFAULT NULL COMMENT '安全库存数',
  `AVERAGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '采购均价（元）',
  `SAFETY_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库存标记：0-库存提醒，1-库存安全',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)大米库存';

-- ----------------------------
-- Records of firm_mill_rice_stock
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_rice_stock_list
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_rice_stock_list`;
CREATE TABLE `firm_mill_rice_stock_list` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `RICE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大米ID',
  `RICE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大米Name',
  `LIST_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流水类型：II-初始化入库，AI-库存调整入库，AO-库存调整出库，PI-采购入库，PMI-采购修改入库，PMO-采购修改出库，SO-销售出库，SMI-销售修改入库，SMO-销售修改出库，RO-退货出库，RMI-退货修改入库，RMO-退货修改出库，BRI-被退货入库，BRMI-被退货修改入库，BRMO-被退货修改出库，DI-扣米入库，DO-扣米出库',
  `BEFORE_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作前数量',
  `AFTER_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作后数量',
  `CHANGE_NUM` decimal(12,0) DEFAULT NULL COMMENT '变化数量',
  `BEFORE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作前均价',
  `AFTER_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作后均价',
  `CHANGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '均价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `REASON` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库调原因',
  `PURCHASE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流水单号',
  `OPERATING_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `OPERATOR_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人ID',
  `OPERATOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)大米出入库流水';

-- ----------------------------
-- Records of firm_mill_rice_stock_list
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_sales_return
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_sales_return`;
CREATE TABLE `firm_mill_sales_return` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `DEALER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商ID',
  `DEALER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '经销商Name',
  `RETURN_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '退货时间',
  `RETURN_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退货地址',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `TOTAL_COUNT` decimal(12,0) DEFAULT NULL COMMENT '小计数量（包）',
  `TOTAL_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量（吨）',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额（元）',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `DRIVER_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '司机信息ID',
  `FROM_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源："LOCAL"-自建经销商；"ONLINE"-好友经销商；',
  `FROM_COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源公司ID',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：0-待退货，1-已退货',
  `APPLY_STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对账标记：0-未对账，1-对账成功',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='j加工厂(标一米)大米销售退货单';

-- ----------------------------
-- Records of firm_mill_sales_return
-- ----------------------------

-- ----------------------------
-- Table structure for firm_mill_sales_return_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_mill_sales_return_row`;
CREATE TABLE `firm_mill_sales_return_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `RETURN_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退货单ID',
  `PRODUCT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品Name',
  `WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '单包重量（斤）',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '退货数量（包）',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `UNIT_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算方式：1-论斤计算，2-论包计算',
  `SUB_WEIGHT` decimal(12,2) DEFAULT NULL COMMENT '小计重量',
  `SUB_PRICE` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='加工厂(标一米)大米销售退货单动态行';

-- ----------------------------
-- Records of firm_mill_sales_return_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_notify
-- ----------------------------
DROP TABLE IF EXISTS `firm_notify`;
CREATE TABLE `firm_notify` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型：1-待办，2-待阅',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：0-未读或未处理，1-已读或已处理',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属用户ID',
  `MODULE_TYPE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属模块',
  `MODULE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属ID',
  `CONTENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息内容',
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息跳转路径',
  `FROM_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发出者ID',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公司通知信息';

-- ----------------------------
-- Records of firm_notify
-- ----------------------------

-- ----------------------------
-- Table structure for firm_package_base
-- ----------------------------
DROP TABLE IF EXISTS `firm_package_base`;
CREATE TABLE `firm_package_base` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ABBR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '简称',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装名称',
  `PACKAGE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装类型：1-普通包装袋，2-真空包装袋，3-箱子',
  `OUTER_PACKAGE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外包装袋ID。真空包装袋时有效，指向真空包装袋',
  `OUTER_PACKAGE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外包装袋名称，真空包装袋时有效',
  `OUTER_PACKAGE_NUM` decimal(12,0) DEFAULT NULL COMMENT '外包装袋数量，真空包装袋时有效',
  `CAPACITY` decimal(13,1) DEFAULT NULL COMMENT '容量（斤/个）',
  `SAFETY_STOCK` decimal(12,0) DEFAULT NULL COMMENT '安全库存',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：包装基础信息表';

-- ----------------------------
-- Records of firm_package_base
-- ----------------------------

-- ----------------------------
-- Table structure for firm_package_purchase
-- ----------------------------
DROP TABLE IF EXISTS `firm_package_purchase`;
CREATE TABLE `firm_package_purchase` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `SUPPLIER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商ID',
  `SUPPLIER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商Name',
  `PURCHASE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '采购类型：1-普通包装袋，2-真空包装袋，3-箱子',
  `PURCHASE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '采购时间',
  `TRUCK_NO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `QUALITY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '质量调整款',
  `QUALITY_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '质量调整款类型：0-扣除，1-添加',
  `TRUCKAGE_UNIT` decimal(20,2) DEFAULT NULL COMMENT '搬运费单价',
  `TRUCKAGE_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '搬运费总价（自付）',
  `TRUCKAGE_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搬运费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRUCKAGE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '搬运费垫付费用',
  `TRANS_TOTAL` decimal(20,2) DEFAULT NULL COMMENT '运输费总价（自付）',
  `TRANS_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输费垫付标记：PARTY-要求对方垫付，SELF-对方要求垫付',
  `TRANS_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '运输费垫付费用',
  `TOTAL_COUNT` decimal(12,0) DEFAULT NULL COMMENT '总数量',
  `TOTAL_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '小计金额',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：1-草稿；2-未确认；3-已确认，未付款；4-部分付款；5：已结清；6：已取消；',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：包装采购单';

-- ----------------------------
-- Records of firm_package_purchase
-- ----------------------------

-- ----------------------------
-- Table structure for firm_package_purchase_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_package_purchase_row`;
CREATE TABLE `firm_package_purchase_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `PURCHASE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '采购单ID',
  `PURCHASE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型：1-普通包装袋，2-真空包装袋，3-箱子',
  `PACKAGE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装ID',
  `PACKAGE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装Name',
  `AMOUNT` decimal(12,0) DEFAULT NULL COMMENT '数量',
  `UNIT` decimal(20,3) DEFAULT NULL COMMENT '单价',
  `SUBTOTAL` decimal(20,2) DEFAULT NULL COMMENT '小计',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：包装采购单动态行';

-- ----------------------------
-- Records of firm_package_purchase_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_package_stock
-- ----------------------------
DROP TABLE IF EXISTS `firm_package_stock`;
CREATE TABLE `firm_package_stock` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `PACKAGE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装类型',
  `PACKAGE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装ID',
  `PACKAGE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装Name',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `STOCK_NUM` decimal(12,0) DEFAULT NULL COMMENT '当前库存数',
  `AVERAGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '采购均价（元）',
  `SAFETY_STOCK` decimal(12,0) DEFAULT NULL COMMENT '安全库存数',
  `SAFETY_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库存标记：0-库存提醒，1-库存安全',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：包装库存';

-- ----------------------------
-- Records of firm_package_stock
-- ----------------------------

-- ----------------------------
-- Table structure for firm_package_stock_list
-- ----------------------------
DROP TABLE IF EXISTS `firm_package_stock_list`;
CREATE TABLE `firm_package_stock_list` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `PACKAGE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装类型：1-普通包装袋，2-真空包装袋，3-箱子',
  `PACKAGE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装ID',
  `PACKAGE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '包装Name',
  `LIST_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流水类型：II-初始化入库，AI-库存调整入库，AO-库存调整出库，PI-采购入库，PMI-采购修改入库，PMO-采购修改出库，RSO-大米销售出库，RSMI-大米销售修改入库，RSMO-大米销售修改出库，BSO-副产品销售出库，BSMI-副产品修改入库，BSMO-副产品修改出库',
  `BEFORE_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作前数量',
  `AFTER_NUM` decimal(12,0) DEFAULT NULL COMMENT '操作后数量',
  `CHANGE_NUM` decimal(12,0) DEFAULT NULL COMMENT '变化数量',
  `BEFORE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作前均价',
  `AFTER_PRICE` decimal(16,5) DEFAULT NULL COMMENT '操作后均价',
  `CHANGE_PRICE` decimal(16,5) DEFAULT NULL COMMENT '均价',
  `DEPOT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库ID',
  `DEPOT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仓库Name',
  `REASON` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '库调原因',
  `PURCHASE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `ORDER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流水单号',
  `OPERATING_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `OPERATOR_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人ID',
  `OPERATOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人Name',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业：包装出入库流水';

-- ----------------------------
-- Records of firm_package_stock_list
-- ----------------------------

-- ----------------------------
-- Table structure for firm_role
-- ----------------------------
DROP TABLE IF EXISTS `firm_role`;
CREATE TABLE `firm_role` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `DETAILS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公司角色表';

-- ----------------------------
-- Records of firm_role
-- ----------------------------

-- ----------------------------
-- Table structure for firm_role_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_role_row`;
CREATE TABLE `firm_role_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `ROLE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公司角色ID',
  `MODULE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限模块ID',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公司角色权限对应表';

-- ----------------------------
-- Records of firm_role_row
-- ----------------------------

-- ----------------------------
-- Table structure for firm_role_user
-- ----------------------------
DROP TABLE IF EXISTS `firm_role_user`;
CREATE TABLE `firm_role_user` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名称',
  `USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '作用用户ID',
  `ROLE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色ID',
  `DETAILS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色用户对应表\r\n';

-- ----------------------------
-- Records of firm_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for firm_statistic_monthly
-- ----------------------------
DROP TABLE IF EXISTS `firm_statistic_monthly`;
CREATE TABLE `firm_statistic_monthly` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日期',
  `YEAR` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年份',
  `MONTH` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '月份',
  `COUNT` decimal(20,0) DEFAULT NULL COMMENT '数量',
  `WEIGHT` decimal(20,2) DEFAULT NULL COMMENT '重量',
  `TRUCKAGE` decimal(20,2) DEFAULT NULL COMMENT '搬运费',
  `TRANS` decimal(20,2) DEFAULT NULL COMMENT '运输费',
  `GROSS_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '毛利润',
  `NET_PROFIT` decimal(20,2) DEFAULT NULL COMMENT '纯利润',
  `SETTLE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '交易额',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别：GP-原粮采购；GS-原粮销售；PP-包装袋采购；BP-箱子采购；RS-大米销售；RR-大米销售退货；RP-大米采购；PR-大米采购退货；BS-副产品销售；',
  `ORDER_SUM` decimal(8,0) DEFAULT NULL COMMENT '单据数量',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业月度统计表';

-- ----------------------------
-- Records of firm_statistic_monthly
-- ----------------------------

-- ----------------------------
-- Table structure for firm_statistic_monthly_row
-- ----------------------------
DROP TABLE IF EXISTS `firm_statistic_monthly_row`;
CREATE TABLE `firm_statistic_monthly_row` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日期',
  `YEAR` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年份',
  `MONTH` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '月份',
  `DAY` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日',
  `COUNT` decimal(20,2) DEFAULT NULL COMMENT '金额',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别',
  `DETAILS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业每月额外收支表';

-- ----------------------------
-- Records of firm_statistic_monthly_row
-- ----------------------------

-- ----------------------------
-- Table structure for friend_add_info
-- ----------------------------
DROP TABLE IF EXISTS `friend_add_info`;
CREATE TABLE `friend_add_info` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `FROM_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息发出者ID',
  `FROM_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息发出者Name',
  `FROM_PHONE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息发出者Phone',
  `FROM_COMPANY` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息发出者公司ID',
  `TO_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息接收者ID',
  `TO_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息接收者Name',
  `TO_PHONE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息接收者Phone',
  `TO_COMPANY` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息接收者公司ID',
  `MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '验证消息',
  `IS_PASS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '好友添加是否通过：UNREAD-未读，ACCEPT-通过, REJECT-拒绝，IGNORE-忽略',
  `RTN_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '返回信息',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='好友添加申请';

-- ----------------------------
-- Records of friend_add_info
-- ----------------------------

-- ----------------------------
-- Table structure for friend_black
-- ----------------------------
DROP TABLE IF EXISTS `friend_black`;
CREATE TABLE `friend_black` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属用户ID',
  `BLACK_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受者ID',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='好友黑名单表';

-- ----------------------------
-- Records of friend_black
-- ----------------------------

-- ----------------------------
-- Table structure for friend_chat
-- ----------------------------
DROP TABLE IF EXISTS `friend_chat`;
CREATE TABLE `friend_chat` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主动用户ID',
  `FRIEND_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '被动用户ID',
  `RELATION_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关系ID',
  `MESSAGE_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息类别：1-文字，2-图片，3-附件',
  `MESSAGE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息ID，非文字消息时有效',
  `MESSAGE_CONTENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文字消息内容',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：UNREAD-未读，READ-已读',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  `READ_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '已读标记：0-未读，1-已读',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='聊天记录表';

-- ----------------------------
-- Records of friend_chat
-- ----------------------------

-- ----------------------------
-- Table structure for friend_relation
-- ----------------------------
DROP TABLE IF EXISTS `friend_relation`;
CREATE TABLE `friend_relation` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主动用户ID',
  `FRIEND_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '被动用户ID',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '好友类别:F-大米加工厂；D-粮食经销商；T-第三方服务商；',
  `NICKNAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '昵称',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='好友关系表';

-- ----------------------------
-- Records of friend_relation
-- ----------------------------

-- ----------------------------
-- Table structure for sys_attachment
-- ----------------------------
DROP TABLE IF EXISTS `sys_attachment`;
CREATE TABLE `sys_attachment` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `FILE_PATH` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件保存路径',
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '初始文件名',
  `FILE_NAME` varchar(320) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件名',
  `FILE_TYPE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件类型',
  `FILE_SIZE` decimal(20,0) DEFAULT NULL COMMENT '文件大小',
  `FILE_SIZE_CHAR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件大小-字符形式',
  `FILE_MD5` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件MD5值',
  `MODULE_TYPE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属模块',
  `MODULE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属ID',
  `MODULE_FIELD` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字段名',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统文件表';

-- ----------------------------
-- Records of sys_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for sys_filter_chain
-- ----------------------------
DROP TABLE IF EXISTS `sys_filter_chain`;
CREATE TABLE `sys_filter_chain` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `RESOURCE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源',
  `AUTHORITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '过滤器类别',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `DETAILS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='过滤器链定义表';

-- ----------------------------
-- Records of sys_filter_chain
-- ----------------------------

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限点名称',
  `CONTENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限内容',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `DETAILS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='权限点（模块）配置表';

-- ----------------------------
-- Records of sys_module
-- ----------------------------

-- ----------------------------
-- Table structure for sys_notify
-- ----------------------------
DROP TABLE IF EXISTS `sys_notify`;
CREATE TABLE `sys_notify` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型：1-待办，2-待阅',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态：0-未读或未处理，1-已读或已处理',
  `USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属用户ID',
  `MODULE_TYPE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属模块',
  `MODULE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属ID',
  `CONTENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息内容',
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '消息跳转路径',
  `FROM_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发出者ID',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='通知信息';

-- ----------------------------
-- Records of sys_notify
-- ----------------------------

-- ----------------------------
-- Table structure for sys_rich
-- ----------------------------
DROP TABLE IF EXISTS `sys_rich`;
CREATE TABLE `sys_rich` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `CONTENT` longtext COLLATE utf8_unicode_ci COMMENT '内容',
  `MODULE_TYPE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属模块',
  `MODULE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属ID',
  `MODULE_FIELD` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字段名',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='富文本内容表';

-- ----------------------------
-- Records of sys_rich
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名',
  `ROLE_TYPE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色类型ID',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属公司ID',
  `USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户ID',
  `DETAILS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='权限角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_module`;
CREATE TABLE `sys_role_module` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配置名称',
  `ROLE_TYPE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色类型ID',
  `MODULE_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限点ID',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `DETAILS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色-权限点对应表';

-- ----------------------------
-- Records of sys_role_module
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_type`;
CREATE TABLE `sys_role_type` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `CONTENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内容',
  `TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色类别',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `DETAILS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色类别表';

-- ----------------------------
-- Records of sys_role_type
-- ----------------------------

-- ----------------------------
-- Table structure for sys_suggest
-- ----------------------------
DROP TABLE IF EXISTS `sys_suggest`;
CREATE TABLE `sys_suggest` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `TITLE` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `CONTENT` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内容',
  `IP` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'IP地址',
  `IP_ADDRESS` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'IP指向地址',
  `CONTACT` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电子邮箱',
  `USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户ID',
  `USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户Name',
  `STATUS` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态',
  `DETAILS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='客户建议表';

-- ----------------------------
-- Records of sys_suggest
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `PHONE` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '手机号',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `SALT` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码加密盐',
  `ICON_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像ID',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电子邮箱',
  `BUSINESS_TYPE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '业务类型：F-大米加工厂；D-粮食经销商；T-第三方服务商；',
  `POSITION` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职位：LEGAL-法人，SALE-销售员，BUYER-采购员，BUYER-财务，GODOWN-仓库管理员',
  `PARENT_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父账户ID',
  `COMPANY_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公司ID，用于权限隔离',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `USABLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_config`;
CREATE TABLE `sys_user_config` (
  `ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  `STYLE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '界面风格-basic：默认风格，business：商务风格',
  `PRINT_CONFIG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '打印配置',
  `ORDER_NUM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序号',
  `CREATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `CREATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人Name',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_USER_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人ID',
  `UPDATE_USER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人Name',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `USABLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否可用：0-禁用，1-可用',
  `DEL_FLAG` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标记：0-删除，1-正常',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户配置表';

-- ----------------------------
-- Records of sys_user_config
-- ----------------------------
