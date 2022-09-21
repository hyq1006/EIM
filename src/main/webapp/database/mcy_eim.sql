/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : mcy_eim

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-09-21 09:14:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accredit
-- ----------------------------
DROP TABLE IF EXISTS `accredit`;
CREATE TABLE `accredit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_date` varchar(255) DEFAULT NULL,
  `cost` float NOT NULL,
  `month` int(11) DEFAULT NULL,
  `over_date` varchar(255) DEFAULT NULL,
  `lessee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6nnkoe8v33w6mpki4pilgs512` (`lessee_id`),
  CONSTRAINT `FK6nnkoe8v33w6mpki4pilgs512` FOREIGN KEY (`lessee_id`) REFERENCES `lessee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accredit
-- ----------------------------
INSERT INTO `accredit` VALUES ('1', '2018-11-07', '200', '8', '2019-07-07', '1');
INSERT INTO `accredit` VALUES ('2', '2018-11-07', '200', '5', '2019-04-07', '2');
INSERT INTO `accredit` VALUES ('3', '2018-11-07', '300', '6', '2018-05-07', '4');
INSERT INTO `accredit` VALUES ('4', '2018-11-07', '0', '12', '2019-11-07', '5');
INSERT INTO `accredit` VALUES ('5', '2018-11-07', '0', '12', '2019-11-07', '6');
INSERT INTO `accredit` VALUES ('6', '2018-11-07', '0', '12', '2019-11-07', '7');
INSERT INTO `accredit` VALUES ('7', '2018-11-09', '0', '12', '2019-11-09', '8');
INSERT INTO `accredit` VALUES ('8', '2018-11-09', '0', '12', '2019-11-09', '9');
INSERT INTO `accredit` VALUES ('9', '2018-11-09', '0', '12', '2019-11-09', '10');
INSERT INTO `accredit` VALUES ('10', '2018-11-09', '0', '12', '2019-11-09', '11');
INSERT INTO `accredit` VALUES ('11', '2018-11-10', '0', '12', '2019-11-10', '3');
INSERT INTO `accredit` VALUES ('12', '2018-11-10', '200', '5', '2019-04-10', '2');

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `money` float NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `lessee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqm4u68bk7bwgvkx6ue63tajol` (`lessee_id`),
  CONSTRAINT `FKqm4u68bk7bwgvkx6ue63tajol` FOREIGN KEY (`lessee_id`) REFERENCES `lessee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES ('1', '82771188277', '2018-11-08 16:33:51', '2018-11-08 17:57:13', '200', '张三', '001', '20181188277,20181188277', '已报销', '2');
INSERT INTO `invoice` VALUES ('2', '30961183096', '2018-11-08 18:05:00', '2018-11-08 18:07:03', '100', '李四', '002', '20181183096,20181183096', '已报销', '1');
INSERT INTO `invoice` VALUES ('3', '18481181848', '2018-11-08 18:49:07', null, '123', null, '123', '20181181848', '未报销', '1');
INSERT INTO `invoice` VALUES ('4', '71551187155', '2018-11-08 18:52:29', '2018-11-08 18:53:58', '100', '张三', '003', '20181187155,20181187155', '已报销', '1');
INSERT INTO `invoice` VALUES ('5', '59611185961', '2018-11-08 18:52:38', null, '100', null, '004', '20181185961', '未报销', '1');
INSERT INTO `invoice` VALUES ('6', '72431187243', '2018-11-08 18:53:20', null, '200', null, '005', '20181187243', '未报销', '1');
INSERT INTO `invoice` VALUES ('7', '53381185338', '2018-11-08 18:54:41', '2018-11-08 19:46:05', '500', '张三', '006', '20181185338,20181185338', '已报销', '4');
INSERT INTO `invoice` VALUES ('8', '71851187185', '2018-11-08 18:56:04', null, '200', null, '007', '20181187185', '未报销', '5');
INSERT INTO `invoice` VALUES ('11', '36791183679', '2018-11-08 20:24:34', '2018-11-08 20:25:32', '100', '王五', '008', '20181183679,20181183679', '已报销', '4');
INSERT INTO `invoice` VALUES ('12', '63021186302', '2018-11-08 20:24:54', '2018-11-08 20:25:19', '200', '李四', '009', '20181186302,20181186302', '已报销', '4');
INSERT INTO `invoice` VALUES ('13', '66781186678', '2018-11-08 20:25:49', null, '300', null, '010', '20181186678', '未报销', '4');
INSERT INTO `invoice` VALUES ('14', '67821196782', '2018-11-09 19:51:50', null, '200', null, '011', '20181196782', '未报销', '9');
INSERT INTO `invoice` VALUES ('15', '64981196498', '2018-11-09 19:52:43', null, '300', null, '012', '20181196498', '未报销', '9');
INSERT INTO `invoice` VALUES ('16', '77781197778', '2018-11-09 19:52:52', null, '200', null, '013', '20181197778', '未报销', '9');
INSERT INTO `invoice` VALUES ('17', '45251194525', '2018-11-09 19:53:28', null, '500', null, '014', '20181194525', '未报销', '9');
INSERT INTO `invoice` VALUES ('18', '58321195832', '2018-11-09 19:53:54', null, '200', null, '015', '20181195832', '未报销', '10');
INSERT INTO `invoice` VALUES ('19', '93211199321', '2018-11-09 19:54:03', '2018-11-09 19:54:19', '200', '张三', '016', '20181199321,20181199321', '已报销', '10');
INSERT INTO `invoice` VALUES ('20', '63421196342', '2018-11-09 19:54:09', null, '300', null, '017', '20181196342', '未报销', '10');
INSERT INTO `invoice` VALUES ('21', '92489219248', '2019-09-21 08:56:34', null, '100000', null, '1111', '20199219248', '未报销', '3');
INSERT INTO `invoice` VALUES ('22', '77739217773', '2019-09-21 08:56:47', null, '2000', null, '22222', '20199217773', '未报销', '3');

-- ----------------------------
-- Table structure for jl
-- ----------------------------
DROP TABLE IF EXISTS `jl`;
CREATE TABLE `jl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bz` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jl
-- ----------------------------

-- ----------------------------
-- Table structure for journal
-- ----------------------------
DROP TABLE IF EXISTS `journal`;
CREATE TABLE `journal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `operation_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of journal
-- ----------------------------
INSERT INTO `journal` VALUES ('1', '2018-11-07 11:05:13', '登入', 'system');
INSERT INTO `journal` VALUES ('2', '2018-11-07 13:22:11', '登出', 'system');
INSERT INTO `journal` VALUES ('3', '2018-11-07 13:22:19', '登入', 'system');
INSERT INTO `journal` VALUES ('4', '2018-11-07 13:27:49', '登出', 'system');
INSERT INTO `journal` VALUES ('5', '2018-11-07 13:28:02', '登入', 'system');
INSERT INTO `journal` VALUES ('6', '2018-11-07 13:33:30', '登出', 'system');
INSERT INTO `journal` VALUES ('7', '2018-11-07 13:37:57', '登入', 'system');
INSERT INTO `journal` VALUES ('8', '2018-11-07 15:41:35', '登入', 'system');
INSERT INTO `journal` VALUES ('9', '2018-11-07 18:56:50', '登入', 'system');
INSERT INTO `journal` VALUES ('10', '2018-11-07 19:35:10', '登入', 'system');
INSERT INTO `journal` VALUES ('11', '2018-11-07 19:39:01', '登出', 'system');
INSERT INTO `journal` VALUES ('12', '2018-11-07 19:40:31', '登入', 'system');
INSERT INTO `journal` VALUES ('13', '2018-11-07 19:40:35', '登出', 'system');
INSERT INTO `journal` VALUES ('14', '2018-11-07 19:41:28', '登入', 'system');
INSERT INTO `journal` VALUES ('15', '2018-11-07 19:42:21', '登出', 'system');
INSERT INTO `journal` VALUES ('16', '2018-11-07 19:42:26', '登入', 'system');
INSERT INTO `journal` VALUES ('17', '2018-11-07 20:10:13', '登出', 'system');
INSERT INTO `journal` VALUES ('18', '2018-11-07 20:10:38', '登入', 'system');
INSERT INTO `journal` VALUES ('19', '2018-11-07 20:10:48', '登出', 'system');
INSERT INTO `journal` VALUES ('20', '2018-11-07 20:10:57', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('21', '2018-11-07 21:28:52', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('22', '2018-11-07 21:55:57', '注册租户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('23', '2018-11-07 21:57:46', '注册租户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('24', '2018-11-07 22:00:26', '注册租户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('25', '2018-11-07 22:27:30', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('26', '2018-11-07 22:28:55', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('27', '2018-11-07 22:30:11', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('28', '2018-11-07 23:05:33', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('29', '2018-11-07 23:40:44', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('30', '2018-11-07 23:55:08', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('31', '2018-11-07 23:55:12', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('32', '2018-11-07 23:55:12', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('33', '2018-11-07 23:55:13', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('34', '2018-11-07 23:55:13', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('35', '2018-11-07 23:56:00', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('36', '2018-11-07 23:58:48', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('37', '2018-11-07 23:59:41', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('38', '2018-11-08 00:05:21', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('39', '2018-11-08 00:06:03', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('40', '2018-11-08 00:23:26', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('41', '2018-11-08 00:23:57', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('42', '2018-11-08 13:02:46', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('43', '2018-11-08 13:09:57', '登入', 'system');
INSERT INTO `journal` VALUES ('44', '2018-11-08 13:15:36', '登出', 'system');
INSERT INTO `journal` VALUES ('45', '2018-11-08 13:28:53', '登入', '001');
INSERT INTO `journal` VALUES ('46', '2018-11-08 13:48:25', '登出', '001');
INSERT INTO `journal` VALUES ('47', '2018-11-08 13:48:42', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('48', '2018-11-08 13:49:05', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('49', '2018-11-08 13:49:23', '登入', '001');
INSERT INTO `journal` VALUES ('50', '2018-11-08 14:04:39', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('51', '2018-11-08 14:13:39', '登入', '001');
INSERT INTO `journal` VALUES ('52', '2018-11-08 14:14:12', '登入', '001');
INSERT INTO `journal` VALUES ('53', '2018-11-08 14:47:13', '登入', '001');
INSERT INTO `journal` VALUES ('54', '2018-11-08 15:18:52', '登入', 'system');
INSERT INTO `journal` VALUES ('55', '2018-11-08 15:23:46', '登入', '001');
INSERT INTO `journal` VALUES ('56', '2018-11-08 15:39:59', '登入', '001');
INSERT INTO `journal` VALUES ('57', '2018-11-08 16:17:01', '登入', '001');
INSERT INTO `journal` VALUES ('58', '2018-11-08 16:20:56', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('59', '2018-11-08 16:22:02', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('60', '2018-11-08 16:33:51', '添加发票', '001');
INSERT INTO `journal` VALUES ('61', '2018-11-08 17:55:45', '登入', '001');
INSERT INTO `journal` VALUES ('62', '2018-11-08 18:05:00', '添加发票', '001');
INSERT INTO `journal` VALUES ('63', '2018-11-08 18:30:28', '登入', 'system');
INSERT INTO `journal` VALUES ('64', '2018-11-08 18:31:05', '登出', '001');
INSERT INTO `journal` VALUES ('65', '2018-11-08 18:31:13', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('66', '2018-11-08 18:32:42', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('67', '2018-11-08 18:32:52', '登入', '001');
INSERT INTO `journal` VALUES ('68', '2018-11-08 18:49:07', '添加发票', '001');
INSERT INTO `journal` VALUES ('69', '2018-11-08 18:52:29', '添加发票', '001');
INSERT INTO `journal` VALUES ('70', '2018-11-08 18:52:38', '添加发票', '001');
INSERT INTO `journal` VALUES ('71', '2018-11-08 18:53:20', '添加发票', '001');
INSERT INTO `journal` VALUES ('72', '2018-11-08 18:54:41', '添加发票', '001');
INSERT INTO `journal` VALUES ('73', '2018-11-08 18:56:04', '添加发票', '001');
INSERT INTO `journal` VALUES ('74', '2018-11-08 18:56:23', '添加发票', '001');
INSERT INTO `journal` VALUES ('75', '2018-11-08 18:56:33', '添加发票', '001');
INSERT INTO `journal` VALUES ('76', '2018-11-08 18:59:51', '登出', '001');
INSERT INTO `journal` VALUES ('77', '2018-11-08 19:01:07', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('78', '2018-11-08 19:07:51', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('79', '2018-11-08 19:08:21', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('80', '2018-11-08 19:08:41', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('81', '2018-11-08 19:10:57', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('82', '2018-11-08 19:11:07', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('83', '2018-11-08 19:11:29', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('84', '2018-11-08 19:12:38', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('85', '2018-11-08 19:15:52', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('86', '2018-11-08 19:15:52', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('87', '2018-11-08 19:15:53', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('88', '2018-11-08 19:15:54', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('89', '2018-11-08 19:16:28', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('90', '2018-11-08 19:16:53', '添加用户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('91', '2018-11-08 19:17:37', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('92', '2018-11-08 19:31:33', '登入', '001');
INSERT INTO `journal` VALUES ('93', '2018-11-08 20:18:03', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('94', '2018-11-08 20:18:11', '登入', '001');
INSERT INTO `journal` VALUES ('95', '2018-11-08 20:24:34', '添加发票', '001');
INSERT INTO `journal` VALUES ('96', '2018-11-08 20:24:54', '添加发票', '001');
INSERT INTO `journal` VALUES ('97', '2018-11-08 20:25:49', '添加发票', '001');
INSERT INTO `journal` VALUES ('98', '2018-11-08 20:26:20', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('99', '2018-11-08 20:31:41', '登出', '001');
INSERT INTO `journal` VALUES ('100', '2018-11-08 20:31:51', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('101', '2018-11-08 20:32:39', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('102', '2018-11-08 20:32:50', '登入', 'system');
INSERT INTO `journal` VALUES ('103', '2018-11-08 21:55:40', '登入', 'system');
INSERT INTO `journal` VALUES ('104', '2018-11-09 09:42:27', '登入', 'system');
INSERT INTO `journal` VALUES ('105', '2018-11-09 10:10:54', '登入', 'system');
INSERT INTO `journal` VALUES ('106', '2018-11-09 12:20:22', '登入', 'system');
INSERT INTO `journal` VALUES ('107', '2018-11-09 12:45:26', '登出', 'system');
INSERT INTO `journal` VALUES ('108', '2018-11-09 12:45:35', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('109', '2018-11-09 13:02:02', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('110', '2018-11-09 13:02:12', '登入', 'system');
INSERT INTO `journal` VALUES ('111', '2018-11-09 13:10:01', '登出', 'system');
INSERT INTO `journal` VALUES ('112', '2018-11-09 14:18:46', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('113', '2018-11-09 14:44:27', '注册租户', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('114', '2018-11-09 15:01:54', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('115', '2018-11-09 15:02:03', '登入', 'system');
INSERT INTO `journal` VALUES ('116', '2018-11-09 15:21:07', '登出', 'system');
INSERT INTO `journal` VALUES ('117', '2018-11-09 15:37:04', '登入', 'system');
INSERT INTO `journal` VALUES ('118', '2018-11-09 15:43:26', '登出', 'system');
INSERT INTO `journal` VALUES ('119', '2018-11-09 18:39:32', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('120', '2018-11-09 18:39:37', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('121', '2018-11-09 18:49:05', '登入', 'system');
INSERT INTO `journal` VALUES ('122', '2018-11-09 19:01:32', '登出', 'system');
INSERT INTO `journal` VALUES ('123', '2018-11-09 19:02:44', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('124', '2018-11-09 19:03:04', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('125', '2018-11-09 19:03:36', '登入', 'system');
INSERT INTO `journal` VALUES ('126', '2018-11-09 19:34:44', '登出', 'system');
INSERT INTO `journal` VALUES ('127', '2018-11-09 19:34:53', '登入', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('128', '2018-11-09 19:38:44', '登出', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('129', '2018-11-09 19:39:59', '登入', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('130', '2018-11-09 19:42:58', '注册租户', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('131', '2018-11-09 19:43:27', '添加用户', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('132', '2018-11-09 19:44:13', '注册租户', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('133', '2018-11-09 19:44:42', '注册租户', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('134', '2018-11-09 19:46:37', '添加用户', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('135', '2018-11-09 19:47:07', '添加用户', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('136', '2018-11-09 19:48:21', '添加用户', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('137', '2018-11-09 19:48:38', '添加用户', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('138', '2018-11-09 19:49:05', '添加用户', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('139', '2018-11-09 19:51:07', '登出', '2050781802@qq.com');
INSERT INTO `journal` VALUES ('140', '2018-11-09 19:51:12', '登入', '011');
INSERT INTO `journal` VALUES ('141', '2018-11-09 19:51:50', '添加发票', '011');
INSERT INTO `journal` VALUES ('142', '2018-11-09 19:52:43', '添加发票', '011');
INSERT INTO `journal` VALUES ('143', '2018-11-09 19:52:52', '添加发票', '011');
INSERT INTO `journal` VALUES ('144', '2018-11-09 19:53:28', '添加发票', '011');
INSERT INTO `journal` VALUES ('145', '2018-11-09 19:53:33', '登出', '011');
INSERT INTO `journal` VALUES ('146', '2018-11-09 19:53:39', '登入', '012');
INSERT INTO `journal` VALUES ('147', '2018-11-09 19:53:54', '添加发票', '012');
INSERT INTO `journal` VALUES ('148', '2018-11-09 19:54:03', '添加发票', '012');
INSERT INTO `journal` VALUES ('149', '2018-11-09 19:54:09', '添加发票', '012');
INSERT INTO `journal` VALUES ('150', '2018-11-09 20:01:30', '登出', '012');
INSERT INTO `journal` VALUES ('151', '2018-11-09 20:02:21', '登入', '001');
INSERT INTO `journal` VALUES ('152', '2018-11-09 20:02:42', '登出', '001');
INSERT INTO `journal` VALUES ('153', '2018-11-09 20:02:49', '登入', 'system');
INSERT INTO `journal` VALUES ('154', '2018-11-09 20:03:34', '登出', 'system');
INSERT INTO `journal` VALUES ('155', '2018-11-09 20:22:17', '登入', '001');
INSERT INTO `journal` VALUES ('156', '2018-11-09 20:22:20', '登出', '001');
INSERT INTO `journal` VALUES ('157', '2018-11-09 22:44:28', '登入', '001');
INSERT INTO `journal` VALUES ('158', '2018-11-09 22:44:47', '登出', '001');
INSERT INTO `journal` VALUES ('159', '2018-11-09 22:47:10', '登入', 'system');
INSERT INTO `journal` VALUES ('160', '2018-11-09 22:47:34', '登出', 'system');
INSERT INTO `journal` VALUES ('161', '2018-11-09 22:53:22', '登入', 'system');
INSERT INTO `journal` VALUES ('162', '2018-11-10 09:59:23', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('163', '2018-11-10 10:00:49', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('164', '2018-11-10 10:00:54', '登入', '001');
INSERT INTO `journal` VALUES ('165', '2018-11-10 10:03:12', '登出', '001');
INSERT INTO `journal` VALUES ('166', '2018-11-10 10:03:22', '登入', 'system');
INSERT INTO `journal` VALUES ('167', '2018-11-10 10:05:47', '登出', 'system');
INSERT INTO `journal` VALUES ('168', '2018-11-10 10:17:39', '登入', '001');
INSERT INTO `journal` VALUES ('169', '2018-11-10 10:44:32', '登出', '001');
INSERT INTO `journal` VALUES ('170', '2018-11-10 10:48:18', '登入', '001');
INSERT INTO `journal` VALUES ('171', '2018-11-10 10:49:22', '登出', '001');
INSERT INTO `journal` VALUES ('172', '2018-11-10 10:50:03', '登入', '001');
INSERT INTO `journal` VALUES ('173', '2018-11-10 10:50:07', '登出', '001');
INSERT INTO `journal` VALUES ('174', '2018-11-10 10:50:14', '登入', '001');
INSERT INTO `journal` VALUES ('175', '2018-11-10 10:50:18', '登出', '001');
INSERT INTO `journal` VALUES ('176', '2018-11-10 10:51:20', '登入', '001');
INSERT INTO `journal` VALUES ('177', '2018-11-10 10:51:26', '登出', '001');
INSERT INTO `journal` VALUES ('178', '2018-11-10 10:52:20', '登入', '002');
INSERT INTO `journal` VALUES ('179', '2018-11-10 10:52:23', '登出', '002');
INSERT INTO `journal` VALUES ('180', '2018-11-10 10:53:12', '登入', '002');
INSERT INTO `journal` VALUES ('181', '2018-11-10 10:53:15', '登出', '002');
INSERT INTO `journal` VALUES ('182', '2018-11-10 10:57:16', '登入', '001');
INSERT INTO `journal` VALUES ('183', '2018-11-10 10:58:12', '登出', '001');
INSERT INTO `journal` VALUES ('184', '2018-11-10 10:58:19', '登入', '001');
INSERT INTO `journal` VALUES ('185', '2018-11-10 10:58:32', '登出', '001');
INSERT INTO `journal` VALUES ('186', '2018-11-10 10:58:39', '登入', '001');
INSERT INTO `journal` VALUES ('187', '2018-11-10 11:00:42', '登出', '001');
INSERT INTO `journal` VALUES ('188', '2018-11-10 11:00:50', '登入', '001');
INSERT INTO `journal` VALUES ('189', '2018-11-10 11:02:11', '登出', '001');
INSERT INTO `journal` VALUES ('190', '2018-11-10 11:02:19', '登入', '001');
INSERT INTO `journal` VALUES ('191', '2018-11-10 11:04:10', '登出', '001');
INSERT INTO `journal` VALUES ('192', '2018-11-10 11:06:53', '登入', 'system');
INSERT INTO `journal` VALUES ('193', '2018-11-10 11:07:35', '登出', 'system');
INSERT INTO `journal` VALUES ('194', '2018-11-10 11:07:59', '登入', '002');
INSERT INTO `journal` VALUES ('195', '2018-11-10 11:18:35', '登出', '002');
INSERT INTO `journal` VALUES ('196', '2018-11-10 11:18:41', '登入', '001');
INSERT INTO `journal` VALUES ('197', '2018-11-10 11:19:16', '登出', '001');
INSERT INTO `journal` VALUES ('198', '2018-11-10 11:19:22', '登入', '001');
INSERT INTO `journal` VALUES ('199', '2018-11-10 11:19:24', '登出', '001');
INSERT INTO `journal` VALUES ('200', '2018-11-10 11:20:40', '登入', '001');
INSERT INTO `journal` VALUES ('201', '2018-11-10 11:21:54', '登出', '001');
INSERT INTO `journal` VALUES ('202', '2018-11-10 11:22:03', '登入', '001');
INSERT INTO `journal` VALUES ('203', '2018-11-10 11:23:55', '登出', '001');
INSERT INTO `journal` VALUES ('204', '2018-11-10 11:24:09', '登入', '001');
INSERT INTO `journal` VALUES ('205', '2018-11-10 11:24:25', '登入', '002');
INSERT INTO `journal` VALUES ('206', '2018-11-10 11:25:49', '登出', '002');
INSERT INTO `journal` VALUES ('207', '2018-11-10 11:25:56', '登入', '001');
INSERT INTO `journal` VALUES ('208', '2018-11-10 11:26:02', '登出', '001');
INSERT INTO `journal` VALUES ('209', '2018-11-10 11:39:38', '登入', '001');
INSERT INTO `journal` VALUES ('210', '2018-11-10 11:40:26', '登出', '001');
INSERT INTO `journal` VALUES ('211', '2018-11-10 11:40:40', '登入', '002');
INSERT INTO `journal` VALUES ('212', '2018-11-10 11:40:43', '登出', '002');
INSERT INTO `journal` VALUES ('213', '2018-11-10 12:13:47', '登入', '001');
INSERT INTO `journal` VALUES ('214', '2018-11-10 12:14:33', '登入', '001');
INSERT INTO `journal` VALUES ('215', '2018-11-10 12:15:06', '登入', '002');
INSERT INTO `journal` VALUES ('216', '2018-11-10 12:15:13', '登出', '002');
INSERT INTO `journal` VALUES ('217', '2018-11-10 12:15:20', '登入', '001');
INSERT INTO `journal` VALUES ('218', '2018-11-10 12:16:05', '登入', '001');
INSERT INTO `journal` VALUES ('219', '2018-11-10 12:16:58', '登入', '001');
INSERT INTO `journal` VALUES ('220', '2018-11-10 12:19:04', '登入', '002');
INSERT INTO `journal` VALUES ('221', '2018-11-10 12:19:18', '登出', '002');
INSERT INTO `journal` VALUES ('222', '2018-11-10 12:20:38', '登入', '001');
INSERT INTO `journal` VALUES ('223', '2018-11-10 12:21:18', '登入', '001');
INSERT INTO `journal` VALUES ('224', '2018-11-10 12:21:59', '登入', '001');
INSERT INTO `journal` VALUES ('225', '2018-11-10 12:22:30', '登入', '001');
INSERT INTO `journal` VALUES ('226', '2018-11-10 12:24:55', '登入', '001');
INSERT INTO `journal` VALUES ('227', '2018-11-10 12:25:05', '登入', '002');
INSERT INTO `journal` VALUES ('228', '2018-11-10 12:25:08', '登出', '002');
INSERT INTO `journal` VALUES ('229', '2018-11-10 12:26:28', '登入', '001');
INSERT INTO `journal` VALUES ('230', '2018-11-10 12:26:36', '登入', '002');
INSERT INTO `journal` VALUES ('231', '2018-11-10 12:26:41', '登出', '002');
INSERT INTO `journal` VALUES ('232', '2018-11-10 12:27:01', '登入', '001');
INSERT INTO `journal` VALUES ('233', '2018-11-10 12:28:51', '登入', '002');
INSERT INTO `journal` VALUES ('234', '2018-11-10 12:28:54', '登出', '002');
INSERT INTO `journal` VALUES ('235', '2018-11-10 12:28:59', '登入', '001');
INSERT INTO `journal` VALUES ('236', '2018-11-10 12:29:06', '登入', '002');
INSERT INTO `journal` VALUES ('237', '2018-11-10 12:29:09', '登出', '002');
INSERT INTO `journal` VALUES ('238', '2018-11-10 12:30:34', '登入', '001');
INSERT INTO `journal` VALUES ('239', '2018-11-10 12:31:36', '登入', '001');
INSERT INTO `journal` VALUES ('240', '2018-11-10 12:32:03', '登入', '001');
INSERT INTO `journal` VALUES ('241', '2018-11-10 12:37:16', '登入', '001');
INSERT INTO `journal` VALUES ('242', '2018-11-10 12:38:19', '登入', '001');
INSERT INTO `journal` VALUES ('243', '2018-11-10 12:40:47', '登入', '002');
INSERT INTO `journal` VALUES ('244', '2018-11-10 12:40:50', '登出', '002');
INSERT INTO `journal` VALUES ('245', '2018-11-10 12:41:03', '登入', '001');
INSERT INTO `journal` VALUES ('246', '2018-11-10 12:43:53', '登入', '001');
INSERT INTO `journal` VALUES ('247', '2018-11-10 12:44:03', '登入', '001');
INSERT INTO `journal` VALUES ('248', '2018-11-10 12:45:21', '登入', '001');
INSERT INTO `journal` VALUES ('249', '2018-11-10 12:46:15', '登入', '001');
INSERT INTO `journal` VALUES ('250', '2018-11-10 12:47:59', '登入', '001');
INSERT INTO `journal` VALUES ('251', '2018-11-10 12:49:30', '登入', '001');
INSERT INTO `journal` VALUES ('252', '2018-11-10 12:50:34', '登入', '001');
INSERT INTO `journal` VALUES ('253', '2018-11-10 12:50:42', '登入', '001');
INSERT INTO `journal` VALUES ('254', '2018-11-10 12:50:53', '登入', '001');
INSERT INTO `journal` VALUES ('255', '2018-11-10 12:52:12', '登入', '001');
INSERT INTO `journal` VALUES ('256', '2018-11-10 12:52:22', '登入', '002');
INSERT INTO `journal` VALUES ('257', '2018-11-10 12:52:25', '登出', '002');
INSERT INTO `journal` VALUES ('258', '2018-11-10 12:52:30', '登入', '001');
INSERT INTO `journal` VALUES ('259', '2018-11-10 12:53:41', '登入', '001');
INSERT INTO `journal` VALUES ('260', '2018-11-10 12:53:49', '登入', '002');
INSERT INTO `journal` VALUES ('261', '2018-11-10 12:53:51', '登出', '002');
INSERT INTO `journal` VALUES ('262', '2018-11-10 12:54:12', '登入', '001');
INSERT INTO `journal` VALUES ('263', '2018-11-10 12:54:33', '登入', 'system');
INSERT INTO `journal` VALUES ('264', '2018-11-10 12:54:39', '登出', 'system');
INSERT INTO `journal` VALUES ('265', '2018-11-10 18:45:44', '登入', 'system');
INSERT INTO `journal` VALUES ('266', '2018-11-10 18:58:48', '登出', 'system');
INSERT INTO `journal` VALUES ('267', '2018-11-10 18:58:55', '登入', '001');
INSERT INTO `journal` VALUES ('268', '2019-09-21 08:24:43', '登入', 'system');
INSERT INTO `journal` VALUES ('269', '2019-09-21 08:41:54', '登出', 'system');
INSERT INTO `journal` VALUES ('270', '2019-09-21 08:43:12', '登入', 'system');
INSERT INTO `journal` VALUES ('271', '2019-09-21 08:44:51', '登出', 'system');
INSERT INTO `journal` VALUES ('272', '2019-09-21 08:45:13', '登入', 'system');
INSERT INTO `journal` VALUES ('273', '2019-09-21 08:45:37', '登出', 'system');
INSERT INTO `journal` VALUES ('274', '2019-09-21 08:45:55', '登入', 'system');
INSERT INTO `journal` VALUES ('275', '2019-09-21 08:46:15', '登出', 'system');
INSERT INTO `journal` VALUES ('276', '2019-09-21 08:46:53', '登入', 'system');
INSERT INTO `journal` VALUES ('277', '2019-09-21 08:47:06', '登出', 'system');
INSERT INTO `journal` VALUES ('278', '2019-09-21 08:47:30', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('279', '2019-09-21 08:48:48', '登出', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('280', '2019-09-21 08:48:55', '登入', '005');
INSERT INTO `journal` VALUES ('281', '2019-09-21 08:54:00', '登入', '005');
INSERT INTO `journal` VALUES ('282', '2019-09-21 08:56:15', '登入', '002');
INSERT INTO `journal` VALUES ('283', '2019-09-21 08:56:34', '添加发票', '002');
INSERT INTO `journal` VALUES ('284', '2019-09-21 08:56:47', '添加发票', '002');
INSERT INTO `journal` VALUES ('285', '2019-09-21 08:57:38', '登出', '002');
INSERT INTO `journal` VALUES ('286', '2019-09-21 08:57:45', '登入', '005');
INSERT INTO `journal` VALUES ('287', '2019-09-21 08:58:01', '登入', '001');
INSERT INTO `journal` VALUES ('288', '2019-09-21 08:58:10', '登入', '002');
INSERT INTO `journal` VALUES ('289', '2019-09-21 08:58:12', '登出', '002');
INSERT INTO `journal` VALUES ('290', '2019-09-21 08:58:19', '登入', '003');
INSERT INTO `journal` VALUES ('291', '2019-09-21 08:58:22', '登出', '003');
INSERT INTO `journal` VALUES ('292', '2019-09-21 08:58:40', '登入', '1242662020@qq.com');
INSERT INTO `journal` VALUES ('293', '2019-09-21 08:58:58', '登出', '1242662020@qq.com');

-- ----------------------------
-- Table structure for lessee
-- ----------------------------
DROP TABLE IF EXISTS `lessee`;
CREATE TABLE `lessee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkman` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `lessee_admin_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK69p1j8g89dnm3wis6fi8h2by7` (`lessee_admin_id`),
  CONSTRAINT `FK69p1j8g89dnm3wis6fi8h2by7` FOREIGN KEY (`lessee_admin_id`) REFERENCES `lessee_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lessee
-- ----------------------------
INSERT INTO `lessee` VALUES ('1', '张三', '湖北三峡职业技术学院', '123456', '2', '5');
INSERT INTO `lessee` VALUES ('2', '李四', '三峡大学', '123456', '2', '1');
INSERT INTO `lessee` VALUES ('3', '王五', '三峡电力职业技术学院', '123456', '2', '2');
INSERT INTO `lessee` VALUES ('4', '候七', '三峡大学科技学院', '123456', '2', '4');
INSERT INTO `lessee` VALUES ('5', '刘备', '三峡旅游职业技术学院', '123456', '2', '1');
INSERT INTO `lessee` VALUES ('6', '张飞', '夷陵中学', '123456', '2', '0');
INSERT INTO `lessee` VALUES ('7', '赵云', '天问中学', '123456', '2', '0');
INSERT INTO `lessee` VALUES ('8', '王五', '三峡集团', '1231', '2', '0');
INSERT INTO `lessee` VALUES ('9', '诸葛亮', '武汉大学', '123456', '29', '4');
INSERT INTO `lessee` VALUES ('10', '张三', '华中科技大学', '123456', '29', '3');
INSERT INTO `lessee` VALUES ('11', '李四', '武汉理工大学', '123456', '29', '0');

-- ----------------------------
-- Table structure for lessee_admin
-- ----------------------------
DROP TABLE IF EXISTS `lessee_admin`;
CREATE TABLE `lessee_admin` (
  `phone` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK7lluuxckqe16vflta9cb52rj4` FOREIGN KEY (`id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lessee_admin
-- ----------------------------
INSERT INTO `lessee_admin` VALUES ('123456', '宜昌教育局', '2');
INSERT INTO `lessee_admin` VALUES ('123456', '武汉教育局', '29');

-- ----------------------------
-- Table structure for pictuer
-- ----------------------------
DROP TABLE IF EXISTS `pictuer`;
CREATE TABLE `pictuer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `jl_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrqygc691q64elhtunuycop2e3` (`jl_id`),
  CONSTRAINT `FKrqygc691q64elhtunuycop2e3` FOREIGN KEY (`jl_id`) REFERENCES `jl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictuer
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ROLE_SYSTEM', '系统管理员');
INSERT INTO `sys_role` VALUES ('2', 'ROLE_ADMIN', '租户管理员');
INSERT INTO `sys_role` VALUES ('3', 'ROLE_USER', '用户');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `sf` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_51bvuyvihefoh4kp5syh2jpi4` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', null, '$2a$10$AmZYOilmY4U8euaAAeVNiusQqJwUeGRjGZ/UiTI0Vx/P0qAesJqee', null, 'system');
INSERT INTO `sys_user` VALUES ('2', '候七', '$2a$10$pvcF2.f5tU4q6etEpzy/i.VOClizapIcIUwVEOBh2x9wz5foFCGWe', null, '1242662020@qq.com');
INSERT INTO `sys_user` VALUES ('4', '张三', '$2a$10$Ln.NHti75EcwjxS10vycRO5co9nqsJ.tUI9BZ/9lzjT0PIWPHn9N2', '1', '001');
INSERT INTO `sys_user` VALUES ('12', '李四', '$2a$10$ldvEiFuVyY.Gm1WmW9Waw.mgbh.QtgCKpjo6b0LWEOXDzCQvlgY3C', '1', '002');
INSERT INTO `sys_user` VALUES ('13', '王五', '$2a$10$6qQlb6C2yjOtxb7P8rlk9OPaEG5rCNdKzMik46dVbHJU3FDyJWTcG', '1', '003');
INSERT INTO `sys_user` VALUES ('29', '王二凡', '$2a$10$oS4AL8tzvj8jC6J7wCTrrOsWD.GO3BWswdhACcId0dYJajm56.aXW', null, '2050781802@qq.com');
INSERT INTO `sys_user` VALUES ('30', '刘备', '$2a$10$PT16t7l6mcUv6.uRAfsY5OSvHev9HIr8we7XHLLeqEbPevzyigsIy', '1', '011');
INSERT INTO `sys_user` VALUES ('31', '候七', '$2a$10$QtutOzYJdHSOUGXF9cpdF.W1Ycm/aFtZDWPeENPJ2SZH4Q8erGkAu', '1', '012');
INSERT INTO `sys_user` VALUES ('32', '赵六', '$2a$10$IpBC6GwxPIY1bh6BANYZNeDep1RnqUTnHkXRkvOUCiIRnW9qOXZ6m', '1', '013');
INSERT INTO `sys_user` VALUES ('33', '刘备', '$2a$10$3EcTxy6yh2RAC6/yMTTBueYLiLQIZzsmx77qDUb1/UP1Dg/zzl89K', '1', '014');
INSERT INTO `sys_user` VALUES ('34', '张飞', '$2a$10$hjL..7qE64UCCojZkJdlJuoRvj9tTk0SljZbjLjFn2oKvmFeN2uhK', '1', '015');
INSERT INTO `sys_user` VALUES ('35', '曹操', '$2a$10$GF4e.ET82vHJeUXsJ8.us.oEFv6H7gzd8RihFt94WP3yoelfU7eC6', '1', '016');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `FKhh52n8vd4ny9ff4x9fb8v65qx` (`role_id`),
  KEY `FKb40xxfch70f5qnyfw8yme1n1s` (`user_id`),
  CONSTRAINT `FKb40xxfch70f5qnyfw8yme1n1s` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKhh52n8vd4ny9ff4x9fb8v65qx` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('4', '3');
INSERT INTO `sys_user_role` VALUES ('12', '3');
INSERT INTO `sys_user_role` VALUES ('13', '3');
INSERT INTO `sys_user_role` VALUES ('29', '2');
INSERT INTO `sys_user_role` VALUES ('30', '3');
INSERT INTO `sys_user_role` VALUES ('31', '3');
INSERT INTO `sys_user_role` VALUES ('32', '3');
INSERT INTO `sys_user_role` VALUES ('33', '3');
INSERT INTO `sys_user_role` VALUES ('34', '3');
INSERT INTO `sys_user_role` VALUES ('35', '3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `remark` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `lessee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlaxhvgsdk6hxqfjap4ijt7488` (`lessee_id`),
  CONSTRAINT `FKgll47uajdm7dj4qtq9r3qense` FOREIGN KEY (`id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKlaxhvgsdk6hxqfjap4ijt7488` FOREIGN KEY (`lessee_id`) REFERENCES `lessee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '4', '4');
INSERT INTO `user` VALUES ('1', '12', '3');
INSERT INTO `user` VALUES ('8', '13', '3');
INSERT INTO `user` VALUES ('1', '30', '9');
INSERT INTO `user` VALUES ('1', '31', '10');
INSERT INTO `user` VALUES ('', '32', '11');
INSERT INTO `user` VALUES ('1', '33', '9');
INSERT INTO `user` VALUES ('1', '34', '10');
INSERT INTO `user` VALUES ('1', '35', '10');
