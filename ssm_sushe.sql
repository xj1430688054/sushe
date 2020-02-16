-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ssm_sushe
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_admin`
--

DROP TABLE IF EXISTS `t_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='超级管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin`
--

LOCK TABLES `t_admin` WRITE;
/*!40000 ALTER TABLE `t_admin` DISABLE KEYS */;
INSERT INTO `t_admin` VALUES (1,'xujian','123456');
/*!40000 ALTER TABLE `t_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_bj`
--

DROP TABLE IF EXISTS `t_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bjName` varchar(100) DEFAULT NULL COMMENT '班级',
  `fdy` varchar(100) DEFAULT NULL COMMENT '辅导员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bj`
--

LOCK TABLES `t_bj` WRITE;
/*!40000 ALTER TABLE `t_bj` DISABLE KEYS */;
INSERT INTO `t_bj` VALUES (1,'一班','阿斯顿发'),(2,'二班','小李子11');
/*!40000 ALTER TABLE `t_bj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer`
--

DROP TABLE IF EXISTS `t_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer`
--

LOCK TABLES `t_customer` WRITE;
/*!40000 ALTER TABLE `t_customer` DISABLE KEYS */;
INSERT INTO `t_customer` VALUES (1,'xujian','123456','消防','13811111111','22','男','缩地大法收费的','23423@qq.com','sdfasd是的发送到发生','','有效',1);
/*!40000 ALTER TABLE `t_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_fk`
--

DROP TABLE IF EXISTS `t_fk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_fk`
--

LOCK TABLES `t_fk` WRITE;
/*!40000 ALTER TABLE `t_fk` DISABLE KEYS */;
INSERT INTO `t_fk` VALUES (1,'1111',1,'大撒打发斯蒂芬','2018-03-27 19:40:25','2018-03-27 19:40:26','阿斯顿发斯蒂芬');
/*!40000 ALTER TABLE `t_fk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_js`
--

DROP TABLE IF EXISTS `t_js`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `v9` varchar(100) DEFAULT NULL COMMENT '晚归',
  `v10` varchar(100) DEFAULT NULL COMMENT '宿舍评分管理',
  `v11` varchar(100) DEFAULT NULL COMMENT '晚归请假申请',
  `v12` varchar(100) DEFAULT NULL COMMENT '学生退宿申请',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_js`
--

LOCK TABLES `t_js` WRITE;
/*!40000 ALTER TABLE `t_js` DISABLE KEYS */;
INSERT INTO `t_js` VALUES (1,'普通管理员','普通管理员','是','否','是','否','否','否','否','是','否','否','是','是'),(2,'第二个角色','损耗管理员','否','否','否','否','是','否','否','否','否','否','是','是');
/*!40000 ALTER TABLE `t_js` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sh`
--

DROP TABLE IF EXISTS `t_sh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sh`
--

LOCK TABLES `t_sh` WRITE;
/*!40000 ALTER TABLE `t_sh` DISABLE KEYS */;
INSERT INTO `t_sh` VALUES (1,1,'的发送到','是','2018-03-27 19:40:08','2018-03-29 19:40:09','阿斯顿发斯蒂芬');
/*!40000 ALTER TABLE `t_sh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ss`
--

DROP TABLE IF EXISTS `t_ss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssName` varchar(100) DEFAULT NULL COMMENT '宿舍编号',
  `sg` varchar(100) DEFAULT NULL COMMENT '宿管',
  `zcw` varchar(100) DEFAULT NULL COMMENT '总床位额',
  `sycw` varchar(100) DEFAULT NULL COMMENT '宿舍床位',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='宿舍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ss`
--

LOCK TABLES `t_ss` WRITE;
/*!40000 ALTER TABLE `t_ss` DISABLE KEYS */;
INSERT INTO `t_ss` VALUES (1,'宿舍一','王阿姨','22','22','是发放');
/*!40000 ALTER TABLE `t_ss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sspf`
--

DROP TABLE IF EXISTS `t_sspf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sspf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssId` int(11) DEFAULT NULL COMMENT '宿舍',
  `df` int(11) DEFAULT NULL COMMENT '评分',
  `dfDate` datetime DEFAULT NULL COMMENT '打分日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='宿舍评分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sspf`
--

LOCK TABLES `t_sspf` WRITE;
/*!40000 ALTER TABLE `t_sspf` DISABLE KEYS */;
INSERT INTO `t_sspf` VALUES (1,1,22,'2018-03-27 00:00:00');
/*!40000 ALTER TABLE `t_sspf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_student`
--

DROP TABLE IF EXISTS `t_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ssstatus` varchar(100) DEFAULT '入住' COMMENT '宿舍状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student`
--

LOCK TABLES `t_student` WRITE;
/*!40000 ALTER TABLE `t_student` DISABLE KEYS */;
INSERT INTO `t_student` VALUES (1,'小明','1381111111','22','男','是的发送到发多少','upload/20190103/154649643982764.png',1,0,'未审核'),(2,'小红','1381111111','22','男','是的发送到发多少','upload/20190103/154649643982764.png',1,1,'入住'),(3,'小白','1381111111','22','男','是的发送到发多少','upload/20190103/154649643982764.png',1,1,'入住'),(4,'小黑','1381111111','22','男','是的发送到发多少','upload/20190103/154649643982764.png',1,1,'入住');
/*!40000 ALTER TABLE `t_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_wg`
--

DROP TABLE IF EXISTS `t_wg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_wg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `leavetime` date DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_wg`
--

LOCK TABLES `t_wg` WRITE;
/*!40000 ALTER TABLE `t_wg` DISABLE KEYS */;
INSERT INTO `t_wg` VALUES (2,2,'2020-02-16','同意');
/*!40000 ALTER TABLE `t_wg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-16 15:05:42
