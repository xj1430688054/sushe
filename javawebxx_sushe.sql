/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ssm_sushe

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-01-03 14:26:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='超级管理员';

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `t_bj`
-- ----------------------------
DROP TABLE IF EXISTS `t_bj`;
CREATE TABLE `t_bj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bjName` varchar(100) DEFAULT NULL COMMENT '班级',
  `fdy` varchar(100) DEFAULT NULL COMMENT '辅导员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='班级';

-- ----------------------------
-- Records of t_bj
-- ----------------------------
INSERT INTO `t_bj` VALUES ('1', '一班', '阿斯顿发');
INSERT INTO `t_bj` VALUES ('2', '二班', '小李子11');

-- ----------------------------
-- Table structure for `t_customer`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `customerName` varchar(100) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(100) DEFAULT NULL COMMENT '电话',
  `age` varchar(100) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(100) DEFAULT NULL COMMENT '性别',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `zw` varchar(100) DEFAULT NULL COMMENT '职务',
  `zwsm` varchar(100) DEFAULT NULL COMMENT '职务说明',
  `status` varchar(100) DEFAULT NULL COMMENT '状态',
  `jsId` int(11) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', 'u1', '111', '消防', '13811111111', '22', '男', '缩地大法收费的', '23423@qq.com', 'sdfasd是的发送到发生', '', '有效', '1');

-- ----------------------------
-- Table structure for `t_fk`
-- ----------------------------
DROP TABLE IF EXISTS `t_fk`;
CREATE TABLE `t_fk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkName` varchar(100) DEFAULT NULL COMMENT '访客名称',
  `studentId` int(11) DEFAULT NULL COMMENT '受访学生',
  `gx` varchar(100) DEFAULT NULL COMMENT '与受访者关系',
  `beginDate` datetime DEFAULT NULL COMMENT '来访时间',
  `endDate` datetime DEFAULT NULL COMMENT '结束时间',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='访客';

-- ----------------------------
-- Records of t_fk
-- ----------------------------
INSERT INTO `t_fk` VALUES ('1', '1111', '1', '大撒打发斯蒂芬', '2018-03-27 19:40:25', '2018-03-27 19:40:26', '阿斯顿发斯蒂芬');

-- ----------------------------
-- Table structure for `t_js`
-- ----------------------------
DROP TABLE IF EXISTS `t_js`;
CREATE TABLE `t_js` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jsName` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `jsms` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `v1` varchar(100) DEFAULT NULL COMMENT '班级管理',
  `v2` varchar(100) DEFAULT NULL COMMENT '用户管理',
  `v3` varchar(100) DEFAULT NULL COMMENT '访客管理',
  `v4` varchar(100) DEFAULT NULL COMMENT '角色管理',
  `v5` varchar(100) DEFAULT NULL COMMENT '损耗管理',
  `v6` varchar(100) DEFAULT NULL COMMENT '宿舍管理',
  `v7` varchar(100) DEFAULT NULL COMMENT '宿舍评分管理',
  `v8` varchar(100) DEFAULT NULL COMMENT '学生管理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of t_js
-- ----------------------------
INSERT INTO `t_js` VALUES ('1', '普通管理员', '普通管理员', '是', '否', '是', '否', '否', '否', '否', '是');
INSERT INTO `t_js` VALUES ('2', '第二个角色', '损耗管理员', '否', '否', '否', '否', '是', '否', '否', '否');

-- ----------------------------
-- Table structure for `t_sh`
-- ----------------------------
DROP TABLE IF EXISTS `t_sh`;
CREATE TABLE `t_sh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssId` int(11) DEFAULT NULL COMMENT '宿舍',
  `shqk` varchar(100) DEFAULT NULL COMMENT '损坏情况',
  `isxf` varchar(100) DEFAULT NULL COMMENT '是否修复',
  `beginDate` datetime DEFAULT NULL COMMENT '损坏时间',
  `endDate` datetime DEFAULT NULL COMMENT '修复时间',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='损耗';

-- ----------------------------
-- Records of t_sh
-- ----------------------------
INSERT INTO `t_sh` VALUES ('1', '1', '的发送到', '是', '2018-03-27 19:40:08', '2018-03-29 19:40:09', '阿斯顿发斯蒂芬');

-- ----------------------------
-- Table structure for `t_ss`
-- ----------------------------
DROP TABLE IF EXISTS `t_ss`;
CREATE TABLE `t_ss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssName` varchar(100) DEFAULT NULL COMMENT '宿舍编号',
  `sg` varchar(100) DEFAULT NULL COMMENT '宿管',
  `zcw` varchar(100) DEFAULT NULL COMMENT '总床位额',
  `sycw` varchar(100) DEFAULT NULL COMMENT '宿舍床位',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='宿舍';

-- ----------------------------
-- Records of t_ss
-- ----------------------------
INSERT INTO `t_ss` VALUES ('1', '宿舍一', '王阿姨', '22', '22', '是发放');

-- ----------------------------
-- Table structure for `t_sspf`
-- ----------------------------
DROP TABLE IF EXISTS `t_sspf`;
CREATE TABLE `t_sspf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssId` int(11) DEFAULT NULL COMMENT '宿舍',
  `df` int(11) DEFAULT NULL COMMENT '评分',
  `dfDate` datetime DEFAULT NULL COMMENT '打分日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='宿舍评分';

-- ----------------------------
-- Records of t_sspf
-- ----------------------------
INSERT INTO `t_sspf` VALUES ('1', '1', '22', '2018-03-27 00:00:00');

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentName` varchar(100) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(100) DEFAULT NULL COMMENT '电话',
  `age` varchar(100) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(100) DEFAULT NULL COMMENT '性别',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `pic` varchar(100) DEFAULT NULL COMMENT '头像',
  `bjId` int(11) DEFAULT NULL COMMENT '班级',
  `ssId` int(11) DEFAULT NULL COMMENT '宿舍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='学生';

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '小明', '1381111111', '22', '男', '是的发送到发多少', 'upload/20190103/154649643982764.png', '1', '1');
