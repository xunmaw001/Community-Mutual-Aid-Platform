-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm016gm
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssm016gm`
--

/*!40000 DROP DATABASE IF EXISTS `ssm016gm`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm016gm` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm016gm`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2022-04-11 07:25:38',1,1,'提问1','回复1',1),(82,'2022-04-11 07:25:38',2,2,'提问2','回复2',2),(83,'2022-04-11 07:25:38',3,3,'提问3','回复3',3),(84,'2022-04-11 07:25:38',4,4,'提问4','回复4',4),(85,'2022-04-11 07:25:38',5,5,'提问5','回复5',5),(86,'2022-04-11 07:25:38',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwudailiu`
--

DROP TABLE IF EXISTS `chongwudailiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwudailiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) NOT NULL COMMENT '序号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuhao` (`xuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='宠物代遛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwudailiu`
--

LOCK TABLES `chongwudailiu` WRITE;
/*!40000 ALTER TABLE `chongwudailiu` DISABLE KEYS */;
INSERT INTO `chongwudailiu` VALUES (41,'2022-04-11 07:25:38','1111111111','标题1','upload/chongwudailiu_fengmian1.jpg','内容详情1','2022-04-11','用户账号1','用户姓名1','13823888881',1,1),(42,'2022-04-11 07:25:38','2222222222','标题2','upload/chongwudailiu_fengmian2.jpg','内容详情2','2022-04-11','用户账号2','用户姓名2','13823888882',2,2),(43,'2022-04-11 07:25:38','3333333333','标题3','upload/chongwudailiu_fengmian3.jpg','内容详情3','2022-04-11','用户账号3','用户姓名3','13823888883',3,3),(44,'2022-04-11 07:25:38','4444444444','标题4','upload/chongwudailiu_fengmian4.jpg','内容详情4','2022-04-11','用户账号4','用户姓名4','13823888884',4,4),(45,'2022-04-11 07:25:38','5555555555','标题5','upload/chongwudailiu_fengmian5.jpg','内容详情5','2022-04-11','用户账号5','用户姓名5','13823888885',5,5),(46,'2022-04-11 07:25:38','6666666666','标题6','upload/chongwudailiu_fengmian6.jpg','内容详情6','2022-04-11','用户账号6','用户姓名6','13823888886',6,6);
/*!40000 ALTER TABLE `chongwudailiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschongwudailiu`
--

DROP TABLE IF EXISTS `discusschongwudailiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschongwudailiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='宠物代遛评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschongwudailiu`
--

LOCK TABLES `discusschongwudailiu` WRITE;
/*!40000 ALTER TABLE `discusschongwudailiu` DISABLE KEYS */;
INSERT INTO `discusschongwudailiu` VALUES (121,'2022-04-11 07:25:38',1,1,'用户名1','评论内容1','回复内容1'),(122,'2022-04-11 07:25:38',2,2,'用户名2','评论内容2','回复内容2'),(123,'2022-04-11 07:25:38',3,3,'用户名3','评论内容3','回复内容3'),(124,'2022-04-11 07:25:38',4,4,'用户名4','评论内容4','回复内容4'),(125,'2022-04-11 07:25:38',5,5,'用户名5','评论内容5','回复内容5'),(126,'2022-04-11 07:25:38',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusschongwudailiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqita`
--

DROP TABLE IF EXISTS `discussqita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqita` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='其他评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqita`
--

LOCK TABLES `discussqita` WRITE;
/*!40000 ALTER TABLE `discussqita` DISABLE KEYS */;
INSERT INTO `discussqita` VALUES (141,'2022-04-11 07:25:38',1,1,'用户名1','评论内容1','回复内容1'),(142,'2022-04-11 07:25:38',2,2,'用户名2','评论内容2','回复内容2'),(143,'2022-04-11 07:25:38',3,3,'用户名3','评论内容3','回复内容3'),(144,'2022-04-11 07:25:38',4,4,'用户名4','评论内容4','回复内容4'),(145,'2022-04-11 07:25:38',5,5,'用户名5','评论内容5','回复内容5'),(146,'2022-04-11 07:25:38',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussqita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqushifenxiang`
--

DROP TABLE IF EXISTS `discussqushifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqushifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='趣事分享评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqushifenxiang`
--

LOCK TABLES `discussqushifenxiang` WRITE;
/*!40000 ALTER TABLE `discussqushifenxiang` DISABLE KEYS */;
INSERT INTO `discussqushifenxiang` VALUES (151,'2022-04-11 07:25:38',1,1,'用户名1','评论内容1','回复内容1'),(152,'2022-04-11 07:25:38',2,2,'用户名2','评论内容2','回复内容2'),(153,'2022-04-11 07:25:38',3,3,'用户名3','评论内容3','回复内容3'),(154,'2022-04-11 07:25:38',4,4,'用户名4','评论内容4','回复内容4'),(155,'2022-04-11 07:25:38',5,5,'用户名5','评论内容5','回复内容5'),(156,'2022-04-11 07:25:38',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussqushifenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshiwuzhaoling`
--

DROP TABLE IF EXISTS `discussshiwuzhaoling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshiwuzhaoling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='失物招领评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshiwuzhaoling`
--

LOCK TABLES `discussshiwuzhaoling` WRITE;
/*!40000 ALTER TABLE `discussshiwuzhaoling` DISABLE KEYS */;
INSERT INTO `discussshiwuzhaoling` VALUES (111,'2022-04-11 07:25:38',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-04-11 07:25:38',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-04-11 07:25:38',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-04-11 07:25:38',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-04-11 07:25:38',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-04-11 07:25:38',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshiwuzhaoling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstingcheweichuzu`
--

DROP TABLE IF EXISTS `discusstingcheweichuzu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstingcheweichuzu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='停车位出租评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstingcheweichuzu`
--

LOCK TABLES `discusstingcheweichuzu` WRITE;
/*!40000 ALTER TABLE `discusstingcheweichuzu` DISABLE KEYS */;
INSERT INTO `discusstingcheweichuzu` VALUES (131,'2022-04-11 07:25:38',1,1,'用户名1','评论内容1','回复内容1'),(132,'2022-04-11 07:25:38',2,2,'用户名2','评论内容2','回复内容2'),(133,'2022-04-11 07:25:38',3,3,'用户名3','评论内容3','回复内容3'),(134,'2022-04-11 07:25:38',4,4,'用户名4','评论内容4','回复内容4'),(135,'2022-04-11 07:25:38',5,5,'用户名5','评论内容5','回复内容5'),(136,'2022-04-11 07:25:38',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstingcheweichuzu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszufangxinxi`
--

DROP TABLE IF EXISTS `discusszufangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszufangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='租房信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszufangxinxi`
--

LOCK TABLES `discusszufangxinxi` WRITE;
/*!40000 ALTER TABLE `discusszufangxinxi` DISABLE KEYS */;
INSERT INTO `discusszufangxinxi` VALUES (101,'2022-04-11 07:25:38',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-04-11 07:25:38',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-04-11 07:25:38',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-04-11 07:25:38',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-04-11 07:25:38',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-04-11 07:25:38',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszufangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qita`
--

DROP TABLE IF EXISTS `qita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qita` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) NOT NULL COMMENT '序号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuhao` (`xuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='其他';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qita`
--

LOCK TABLES `qita` WRITE;
/*!40000 ALTER TABLE `qita` DISABLE KEYS */;
INSERT INTO `qita` VALUES (61,'2022-04-11 07:25:38','1111111111','标题1','upload/qita_fengmian1.jpg','内容详情1','2022-04-11','用户账号1','用户姓名1','13823888881',1,1),(62,'2022-04-11 07:25:38','2222222222','标题2','upload/qita_fengmian2.jpg','内容详情2','2022-04-11','用户账号2','用户姓名2','13823888882',2,2),(63,'2022-04-11 07:25:38','3333333333','标题3','upload/qita_fengmian3.jpg','内容详情3','2022-04-11','用户账号3','用户姓名3','13823888883',3,3),(64,'2022-04-11 07:25:38','4444444444','标题4','upload/qita_fengmian4.jpg','内容详情4','2022-04-11','用户账号4','用户姓名4','13823888884',4,4),(65,'2022-04-11 07:25:38','5555555555','标题5','upload/qita_fengmian5.jpg','内容详情5','2022-04-11','用户账号5','用户姓名5','13823888885',5,5),(66,'2022-04-11 07:25:38','6666666666','标题6','upload/qita_fengmian6.jpg','内容详情6','2022-04-11','用户账号6','用户姓名6','13823888886',6,6);
/*!40000 ALTER TABLE `qita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qushifenxiang`
--

DROP TABLE IF EXISTS `qushifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qushifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghu` varchar(200) DEFAULT NULL COMMENT '用户',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='趣事分享';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qushifenxiang`
--

LOCK TABLES `qushifenxiang` WRITE;
/*!40000 ALTER TABLE `qushifenxiang` DISABLE KEYS */;
INSERT INTO `qushifenxiang` VALUES (71,'2022-04-11 07:25:38','标题1','upload/qushifenxiang_fengmian1.jpg','内容详情1','2022-04-11','用户账号1','用户1','13823888881',1,1),(72,'2022-04-11 07:25:38','标题2','upload/qushifenxiang_fengmian2.jpg','内容详情2','2022-04-11','用户账号2','用户2','13823888882',2,2),(73,'2022-04-11 07:25:38','标题3','upload/qushifenxiang_fengmian3.jpg','内容详情3','2022-04-11','用户账号3','用户3','13823888883',3,3),(74,'2022-04-11 07:25:38','标题4','upload/qushifenxiang_fengmian4.jpg','内容详情4','2022-04-11','用户账号4','用户4','13823888884',4,4),(75,'2022-04-11 07:25:38','标题5','upload/qushifenxiang_fengmian5.jpg','内容详情5','2022-04-11','用户账号5','用户5','13823888885',5,5),(76,'2022-04-11 07:25:38','标题6','upload/qushifenxiang_fengmian6.jpg','内容详情6','2022-04-11','用户账号6','用户6','13823888886',6,6);
/*!40000 ALTER TABLE `qushifenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiwuzhaoling`
--

DROP TABLE IF EXISTS `shiwuzhaoling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiwuzhaoling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) NOT NULL COMMENT '序号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuhao` (`xuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='失物招领';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiwuzhaoling`
--

LOCK TABLES `shiwuzhaoling` WRITE;
/*!40000 ALTER TABLE `shiwuzhaoling` DISABLE KEYS */;
INSERT INTO `shiwuzhaoling` VALUES (31,'2022-04-11 07:25:38','1111111111','标题1','upload/shiwuzhaoling_fengmian1.jpg','内容详情1','2022-04-11','用户账号1','用户姓名1','13823888881',1,1),(32,'2022-04-11 07:25:38','2222222222','标题2','upload/shiwuzhaoling_fengmian2.jpg','内容详情2','2022-04-11','用户账号2','用户姓名2','13823888882',2,2),(33,'2022-04-11 07:25:38','3333333333','标题3','upload/shiwuzhaoling_fengmian3.jpg','内容详情3','2022-04-11','用户账号3','用户姓名3','13823888883',3,3),(34,'2022-04-11 07:25:38','4444444444','标题4','upload/shiwuzhaoling_fengmian4.jpg','内容详情4','2022-04-11','用户账号4','用户姓名4','13823888884',4,4),(35,'2022-04-11 07:25:38','5555555555','标题5','upload/shiwuzhaoling_fengmian5.jpg','内容详情5','2022-04-11','用户账号5','用户姓名5','13823888885',5,5),(36,'2022-04-11 07:25:38','6666666666','标题6','upload/shiwuzhaoling_fengmian6.jpg','内容详情6','2022-04-11','用户账号6','用户姓名6','13823888886',6,6);
/*!40000 ALTER TABLE `shiwuzhaoling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tingcheweichuzu`
--

DROP TABLE IF EXISTS `tingcheweichuzu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tingcheweichuzu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) NOT NULL COMMENT '序号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuhao` (`xuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='停车位出租';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tingcheweichuzu`
--

LOCK TABLES `tingcheweichuzu` WRITE;
/*!40000 ALTER TABLE `tingcheweichuzu` DISABLE KEYS */;
INSERT INTO `tingcheweichuzu` VALUES (51,'2022-04-11 07:25:38','1111111111','标题1','upload/tingcheweichuzu_fengmian1.jpg','内容详情1','2022-04-11','用户账号1','用户姓名1','13823888881',1,1),(52,'2022-04-11 07:25:38','2222222222','标题2','upload/tingcheweichuzu_fengmian2.jpg','内容详情2','2022-04-11','用户账号2','用户姓名2','13823888882',2,2),(53,'2022-04-11 07:25:38','3333333333','标题3','upload/tingcheweichuzu_fengmian3.jpg','内容详情3','2022-04-11','用户账号3','用户姓名3','13823888883',3,3),(54,'2022-04-11 07:25:38','4444444444','标题4','upload/tingcheweichuzu_fengmian4.jpg','内容详情4','2022-04-11','用户账号4','用户姓名4','13823888884',4,4),(55,'2022-04-11 07:25:38','5555555555','标题5','upload/tingcheweichuzu_fengmian5.jpg','内容详情5','2022-04-11','用户账号5','用户姓名5','13823888885',5,5),(56,'2022-04-11 07:25:38','6666666666','标题6','upload/tingcheweichuzu_fengmian6.jpg','内容详情6','2022-04-11','用户账号6','用户姓名6','13823888886',6,6);
/*!40000 ALTER TABLE `tingcheweichuzu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-11 07:25:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-11 07:25:38','用户账号1','用户姓名1','123456','男','13823888881','upload/yonghu_touxiang1.jpg'),(12,'2022-04-11 07:25:38','用户账号2','用户姓名2','123456','男','13823888882','upload/yonghu_touxiang2.jpg'),(13,'2022-04-11 07:25:38','用户账号3','用户姓名3','123456','男','13823888883','upload/yonghu_touxiang3.jpg'),(14,'2022-04-11 07:25:38','用户账号4','用户姓名4','123456','男','13823888884','upload/yonghu_touxiang4.jpg'),(15,'2022-04-11 07:25:38','用户账号5','用户姓名5','123456','男','13823888885','upload/yonghu_touxiang5.jpg'),(16,'2022-04-11 07:25:38','用户账号6','用户姓名6','123456','男','13823888886','upload/yonghu_touxiang6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zufangxinxi`
--

DROP TABLE IF EXISTS `zufangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zufangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) NOT NULL COMMENT '序号',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuhao` (`xuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='租房信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zufangxinxi`
--

LOCK TABLES `zufangxinxi` WRITE;
/*!40000 ALTER TABLE `zufangxinxi` DISABLE KEYS */;
INSERT INTO `zufangxinxi` VALUES (21,'2022-04-11 07:25:38','1111111111','标题1','upload/zufangxinxi_fengmian1.jpg','内容详情1','2022-04-11','用户账号1','用户姓名1','13823888881',1,1),(22,'2022-04-11 07:25:38','2222222222','标题2','upload/zufangxinxi_fengmian2.jpg','内容详情2','2022-04-11','用户账号2','用户姓名2','13823888882',2,2),(23,'2022-04-11 07:25:38','3333333333','标题3','upload/zufangxinxi_fengmian3.jpg','内容详情3','2022-04-11','用户账号3','用户姓名3','13823888883',3,3),(24,'2022-04-11 07:25:38','4444444444','标题4','upload/zufangxinxi_fengmian4.jpg','内容详情4','2022-04-11','用户账号4','用户姓名4','13823888884',4,4),(25,'2022-04-11 07:25:38','5555555555','标题5','upload/zufangxinxi_fengmian5.jpg','内容详情5','2022-04-11','用户账号5','用户姓名5','13823888885',5,5),(26,'2022-04-11 07:25:38','6666666666','标题6','upload/zufangxinxi_fengmian6.jpg','内容详情6','2022-04-11','用户账号6','用户姓名6','13823888886',6,6);
/*!40000 ALTER TABLE `zufangxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-11 23:30:58
