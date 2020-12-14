/*
Navicat MariaDB Data Transfer

Source Server         : ctt
Source Server Version : 100139
Source Host           : localhost:3306
Source Database       : ctt

Target Server Type    : MariaDB
Target Server Version : 100139
File Encoding         : 65001

Date: 2020-12-07 08:50:39
*/

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE  IF EXISTS `ctt`;

CREATE DATABASE IF  NOT EXISTS  `ctt` DEFAULT  CHARACTER SET 'gbk';

USE `ctt`;

-- ----------------------------
-- Table structure for ctt_category
-- ----------------------------
DROP TABLE IF EXISTS `ctt_category`;
CREATE TABLE `ctt_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID,主键且唯一',
  `category_name` varchar(30) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ctt_category
-- ----------------------------
INSERT INTO `ctt_category` VALUES ('1', '今日热卖');
INSERT INTO `ctt_category` VALUES ('3', '肉蛋水产');
INSERT INTO `ctt_category` VALUES ('5', '乳品冲饮');
INSERT INTO `ctt_category` VALUES ('2', '时令蔬菜');
INSERT INTO `ctt_category` VALUES ('4', '新鲜水果');
INSERT INTO `ctt_category` VALUES ('6', '休闲零食');

-- ----------------------------
-- Table structure for ctt_goods
-- ----------------------------
DROP TABLE IF EXISTS `ctt_goods`;
CREATE TABLE `ctt_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品ID，主键且自增',
  `typeid` int(10) unsigned NOT NULL COMMENT '外键，参照ctt_category表的ID',
  `goodsname` varchar(50) NOT NULL COMMENT '商品名称',
  `saleprice` float NOT NULL COMMENT '销售价格',
  `costprice` float NOT NULL COMMENT '原价格',
  `content` varchar(1000) NOT NULL COMMENT '商品简介',
  `readcount` int(11) NOT NULL DEFAULT '0' COMMENT '阅读次数',
  `buycount` int(11) NOT NULL DEFAULT '0' COMMENT '销售数量',
  `image` varchar(50) NOT NULL COMMENT '商品图片',
  `goodsdate` int(10) unsigned NOT NULL COMMENT '商品添加日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ctt_goods
-- ----------------------------
INSERT INTO `ctt_goods` VALUES ('1', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('2', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('3', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('4', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('5', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('6', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('7', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('8', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('9', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('10', '1', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('11', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('12', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('13', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('14', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('15', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('16', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('17', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('18', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('19', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('20', '2', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('21', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('22', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('23', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('24', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('25', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('26', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('27', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('28', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('29', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('30', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('31', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('32', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('33', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('34', '3', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('35', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('36', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('37', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('38', '5', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('39', '5', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('40', '5', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('41', '5', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('42', '5', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('43', '5', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('44', '5', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('45', '5', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('46', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('47', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('48', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('49', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('50', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('51', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('52', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('53', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('54', '4', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('55', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('56', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('57', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('58', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('59', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('60', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('61', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('62', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('63', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('64', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('65', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('66', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('67', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('68', '6', '', '0', '0', '', '0', '0', '', '0');
INSERT INTO `ctt_goods` VALUES ('69', '6', '', '0', '0', '', '0', '0', '', '0');

-- ----------------------------
-- Table structure for ctt_order
-- ----------------------------
DROP TABLE IF EXISTS `ctt_order`;
CREATE TABLE `ctt_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID，主键且自增',
  `goodsid` int(10) unsigned NOT NULL COMMENT '外键，参照ctt_goods表的ID',
  `userid` int(10) unsigned NOT NULL COMMENT '外键，参照ctt_user表的ID',
  `totalmoney` float NOT NULL COMMENT '订单金额',
  `orderdate` int(10) unsigned NOT NULL COMMENT '订单日期',
  `oderstate` varchar(1) NOT NULL COMMENT '订单是否处理，0为待付款，1为待提货，2为待评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ctt_order
-- ----------------------------

-- ----------------------------
-- Table structure for ctt_shop
-- ----------------------------
DROP TABLE IF EXISTS `ctt_shop`;
CREATE TABLE `ctt_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '店铺ID，主键且自增',
  `shopname` varchar(50) NOT NULL COMMENT '店铺名',
  `address` varchar(255) NOT NULL COMMENT '店铺地址',
  `shopimage` varchar(50) NOT NULL COMMENT '店铺图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ctt_shop
-- ----------------------------
INSERT INTO `ctt_shop` VALUES ('1', '多多买菜腾龙超市', '历城区腾龙超市（山大北路店）山大北路87-2', '');
INSERT INTO `ctt_shop` VALUES ('2', '乐橙', '历下区大华产业授权体验中心', '');
INSERT INTO `ctt_shop` VALUES ('3', '华普电子技术有限公司', '历下区数码港公寓', '');
INSERT INTO `ctt_shop` VALUES ('4', '华顺鑫超市', '历下区华顺鑫超市花园庄东路16号', '');
INSERT INTO `ctt_shop` VALUES ('5', '历下区玖玖便利生活超市', '历下区霸王蛙烧烤（花园东路）花园路290', '');
INSERT INTO `ctt_shop` VALUES ('6', '江夏区小张水果超市', '历下区皇家美孚（家家悦华夏福地超市）', '');
INSERT INTO `ctt_shop` VALUES ('7', '利农花园社区团购', '历下区利农花园（济南历下区山大路85号）13号楼对面便民超市', '');
INSERT INTO `ctt_shop` VALUES ('8', '花园路人和超市', '历城区拆迁办小区花园路198号人和超市', '');
INSERT INTO `ctt_shop` VALUES ('9', '齐鲁师范学员菜鸟驿站', '历下区菜鸟驿站（齐鲁师范学员6号楼西头店）', '');
INSERT INTO `ctt_shop` VALUES ('10', '自信商行', '历下区利农小气3号楼山大路85号利农花园', '');
INSERT INTO `ctt_shop` VALUES ('11', '泰券超市', '历城区花园小区二区10号楼', '');
INSERT INTO `ctt_shop` VALUES ('12', '贵发超市', '历城区贵发小区', '');
INSERT INTO `ctt_shop` VALUES ('13', '小样五金百货', '历城区小样五金百货', '');
INSERT INTO `ctt_shop` VALUES ('14', '绿景嘉园', '历下区黄台南路58号楼6号楼3单元102', '');

-- ----------------------------
-- Table structure for ctt_user
-- ----------------------------
DROP TABLE IF EXISTS `ctt_user`;
CREATE TABLE `ctt_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id，主键且自增',
  `username` varchar(30) NOT NULL COMMENT '用户名,唯一',
  `password` varchar(32) NOT NULL COMMENT '密码,MD5',
  `nickname` varchar(30) DEFAULT NULL,
  `avatar` varchar(60) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '用户头像',
  `sex` bit(1) NOT NULL COMMENT '性别',
  `telephone` varchar(20) NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ctt_user
-- ----------------------------
INSERT INTO `ctt_user` VALUES ('1', '李易峰', '111111', '易峰', 'unnamed.jpg', '', '13111111111');
INSERT INTO `ctt_user` VALUES ('2', '迪丽热巴', '111111', '热巴', 'unnamed.jpg', '\0', '13211111111');
INSERT INTO `ctt_user` VALUES ('3', '陈立农', '111111', '农农', 'unnamed.jpg', '', '13511111111');
INSERT INTO `ctt_user` VALUES ('4', '华晨宇', '111111', '花花', 'unnamed.jpg', '', '18311111111');
INSERT INTO `ctt_user` VALUES ('5', '易烊千玺', '111111', '四字弟弟', 'unnamed.jpg', '', '15011111111');
