-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: zhonglai
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `think_article`
--

DROP TABLE IF EXISTS `think_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `column_id` int(11) NOT NULL COMMENT '栏目id',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `title_en` varchar(200) DEFAULT NULL COMMENT '英文标题',
  `post_time` datetime NOT NULL COMMENT '发布时间',
  `thumb` varchar(100) NOT NULL COMMENT '缩略图',
  `keywords` varchar(50) NOT NULL COMMENT '关键词',
  `descriptions` text NOT NULL COMMENT '描述',
  `source` varchar(100) NOT NULL COMMENT '来源',
  `content` longtext NOT NULL COMMENT '内容',
  `direction` longtext NOT NULL COMMENT '方向',
  `course` longtext NOT NULL COMMENT '课程',
  `obtain` longtext NOT NULL COMMENT '就业',
  `click` int(11) NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_article`
--

LOCK TABLES `think_article` WRITE;
/*!40000 ALTER TABLE `think_article` DISABLE KEYS */;
INSERT INTO `think_article` VALUES (1,1,'企业简介','企业简介','2018-06-30 23:40:02','','','企业简介','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/20180618/1529333888532044.jpg&quot; title=&quot;1529333888532044.jpg&quot; alt=&quot;jj_03.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/20180618/1529333892326783.jpg&quot; title=&quot;1529333892326783.jpg&quot; alt=&quot;jj_06.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;a&gt;企业简介2&lt;/a&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',37),(2,2,'中莱建筑','中莱建筑','2018-06-29 20:59:57','','','中莱建筑','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;http://localhost/DaLianZhongGongXueXiao/#&quot;&gt;&lt;/a&gt;中莱建筑&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',14),(3,3,'学生成长','学生成长','2017-05-18 19:43:46','','','学生成长','','&lt;p&gt;学生成长&lt;/p&gt;','','','',0),(4,4,' 生活关怀',' 生活关怀','2017-05-18 19:44:49','','',' 生活关怀','','&lt;p&gt;生活关怀&lt;/p&gt;','','','',0),(5,5,'就业保障','就业保障','2017-05-18 19:52:10','','','就业保障','','&lt;p&gt;就业保障&lt;/p&gt;','','','',0),(6,6,'惠生政策','惠生政策','2017-05-18 19:55:16','','','惠生政策','','&lt;p&gt;惠生政策&lt;/p&gt;','','','',0),(7,7,'联系我们','联系我们','2017-05-18 19:57:15','','','联系我们','','&lt;p&gt;联系我们&lt;/p&gt;','','','',0),(8,8,'工商联综合体','','2018-06-18 22:00:28','2018-06-18/5b27bafc562bb.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;工商联综合体&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(9,8,'糖酒大厦','','2018-06-18 22:00:14','2018-06-18/5b27baee34483.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;糖酒大厦&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(10,8,'人民法院','','2018-06-18 22:00:41','2018-06-18/5b27bb0908779.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;人民法院&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(11,8,'华东气体','','2018-06-18 22:00:58','2018-06-18/5b27bb1a9de20.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;华东气体&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',1),(12,17,'党群工作1','','2018-06-18 22:49:28','2018-06-18/5b27c678ddf59.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;spp 党群工作1&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(13,17,'党群工作2','','2018-06-18 22:49:17','2018-06-18/5b27c66d62437.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;党群工作2&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(14,17,'党群工作3','','2018-06-18 22:49:03','2018-06-18/5b27c65f37574.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;党群工作3&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(15,9,'松韵园','','2018-06-18 22:53:03','2018-06-18/5b27c74f09dc9.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;松韵园&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(18,9,'中韵家苑','','2018-06-18 22:53:20','2018-06-18/5b27c760b86ce.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中韵家苑&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',12),(19,9,'天韵尚城','','2018-06-18 22:53:37','2018-06-18/5b27c77176023.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;天韵尚城&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(17,13,'八大理由','','2017-05-18 21:54:26','','','八大理由','','&lt;p&gt;八大理由&lt;/p&gt;','','','',0),(20,11,'平面美术设计','','2017-05-19 16:21:08','','平面美术设计','平面美术设计','','&lt;p&gt;平面美术设计&lt;/p&gt;','','','',0),(21,11,'汽车检测及维修','','2017-05-19 16:21:26','','汽车检测及维修','汽车检测及维修','','&lt;p&gt;汽车检测及维修&lt;/p&gt;','','','',0),(22,11,'机械装配','','2017-05-19 16:21:42','','机械装配','机械装配','','&lt;p&gt;机械装配&lt;/p&gt;','','','',0),(23,11,'质检与技术文秘','','2017-05-19 16:21:54','','质检与技术文秘','质检与技术文秘','','&lt;p&gt;质检与技术文秘&lt;/p&gt;','','','',0),(24,11,'电气技术','','2017-05-19 16:22:07','','电气技术','电气技术','','&lt;p&gt;电气技术&lt;/p&gt;','','','',0),(25,11,'加工中心技术','','2017-05-19 16:22:21','','加工中心技术','加工中心技术','','&lt;p&gt;加工中心技术&lt;/p&gt;','','','',0),(26,11,'模具制造','','2017-05-19 16:22:34','','模具制造','模具制造','','&lt;p&gt;模具制造&lt;/p&gt;','','','',2),(27,11,'数控加工技术','','2017-05-19 16:22:49','','数控加工技术','数控加工技术','','&lt;p&gt;数控加工技术&lt;/p&gt;','','','',0),(28,14,'大重技校举行踢毽比赛1','','2017-05-19 22:30:53','','大重技校举行踢毽比赛1','大重技校举行踢毽比赛1','百度','&lt;p&gt;大重技校举行踢毽比赛1&lt;/p&gt;','','','',23),(29,14,'大重技校举行踢毽比赛2','','2017-05-19 22:39:54','','大重技校举行踢毽比赛2','大重技校举行踢毽比赛2','百度','&lt;p&gt;大重技校举行踢毽比赛2&lt;/p&gt;','','','',14),(30,1,'领导致辞','','2018-06-28 23:07:07','','领导致辞','','','&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/20180618/1529334424128643.jpg&quot; title=&quot;1529334424128643.jpg&quot; alt=&quot;ld_03.jpg&quot;/&gt;														&lt;/p&gt;&lt;p&gt;领导致辞&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',2),(31,1,'组织结构','','2018-06-27 23:16:55','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;山东中莱建设集团有限公司组织结构&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 24px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/20180618/1529334611552054.jpg&quot; title=&quot;1529334611552054.jpg&quot; alt=&quot;jg_032.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',6),(32,1,'企业文化','','2018-06-26 12:01:31','','','','','&lt;p&gt;企业文化&lt;/p&gt;','','','',5),(33,1,'资质荣誉','','2018-06-24 23:41:03','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;资质荣誉&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',8),(34,1,'发展历程','','2018-06-18 23:18:17','','','','','&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;padding:32px 0;&quot;&gt;&lt;img src=&quot;http://localhost:82/Uploads/ueditor/20180618/1529333988135933.jpg&quot; style=&quot;white-space: normal;&quot;/&gt; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;http://localhost:82/Uploads/ueditor/20180618/1529333988574904.jpg&quot; style=&quot;white-space: normal;&quot;/&gt;&lt;img src=&quot;http://localhost:82/Uploads/ueditor/20180618/1529333988128798.jpg&quot; style=&quot;white-space: normal;&quot;/&gt; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;http://localhost:82/Uploads/ueditor/20180618/1529333988859215.jpg&quot; style=&quot;white-space: normal;&quot;/&gt;&lt;img src=&quot;http://localhost:82/Uploads/ueditor/20180618/1529333989134487.jpg&quot; style=&quot;white-space: normal;&quot;/&gt;&lt;img src=&quot;/Uploads/ueditor/20180618/1529333989115536.jpg&quot;/&gt; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;http://localhost:82/Uploads/ueditor/20180618/1529333989117278.jpg&quot; style=&quot;white-space: normal;&quot;/&gt;&lt;/p&gt;&lt;p&gt;发展历史&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',10),(35,2,'中莱房地产','','2018-06-29 21:00:10','','','中莱房地产','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中莱房地产&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(36,2,'中莱物业','','2018-06-27 21:00:29','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中莱物业&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(37,2,'中莱俱乐部','','2018-06-25 21:00:45','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中莱俱乐部&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(38,2,'中莱装饰','','2018-06-18 20:55:02','','','','','&lt;p&gt;中莱装饰&lt;/p&gt;','','','',0),(39,2,'中鲁门窗厂','','2018-06-01 20:57:06','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中鲁门窗厂&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(40,2,'中粮建材','','2018-06-18 20:57:47','','','','','&lt;p&gt;中粮建材&lt;/p&gt;','','','',0),(41,2,'中莱工程咨询','','2018-06-18 20:58:04','','','','','&lt;p&gt;中莱工程咨询&lt;/p&gt;','','','',0),(42,2,'天韵光伏','','2018-05-01 20:58:28','','','','','&lt;p&gt;天韵光伏&lt;/p&gt;','','','',0);
/*!40000 ALTER TABLE `think_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_auth_group`
--

DROP TABLE IF EXISTS `think_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_auth_group` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_auth_group`
--

LOCK TABLES `think_auth_group` WRITE;
/*!40000 ALTER TABLE `think_auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_auth_group_access`
--

DROP TABLE IF EXISTS `think_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_auth_group_access` (
  `uid` int(10) unsigned NOT NULL,
  `group_id` tinyint(3) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_auth_group_access`
--

LOCK TABLES `think_auth_group_access` WRITE;
/*!40000 ALTER TABLE `think_auth_group_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_auth_rule`
--

DROP TABLE IF EXISTS `think_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_auth_rule`
--

LOCK TABLES `think_auth_rule` WRITE;
/*!40000 ALTER TABLE `think_auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_column`
--

DROP TABLE IF EXISTS `think_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `type` tinyint(1) NOT NULL COMMENT '属性',
  `name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '栏目名称',
  `en_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `other_en` varchar(100) DEFAULT NULL,
  `keywords` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '关键词',
  `descriptions` text CHARACTER SET utf8 NOT NULL COMMENT '描述',
  `mob_title_pic` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机标题图片',
  `pc_pic` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '电脑栏目图片',
  `mob_pic` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机栏目图片',
  `thumb` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '栏目缩略图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_column`
--

LOCK TABLES `think_column` WRITE;
/*!40000 ALTER TABLE `think_column` DISABLE KEYS */;
INSERT INTO `think_column` VALUES (1,0,0,'关于我们','','','学校介绍','学校介绍',NULL,'2018-06-18/5b273c840d617.jpg',NULL,NULL),(2,0,0,'产业中心','','','学习模式','产业中心',NULL,NULL,NULL,NULL),(3,0,0,'咨询中心','','','学生成长','咨询中心',NULL,NULL,NULL,NULL),(4,0,0,'合资合作','','','合资合作','合资合作',NULL,NULL,NULL,NULL),(5,0,0,'党群建设','','','党群建设','党群建设',NULL,NULL,NULL,NULL),(6,0,0,'人才招聘','','','人才招聘','人才招聘',NULL,NULL,NULL,NULL),(7,0,0,'联系我们','','','联系我们','联系我们',NULL,NULL,NULL,NULL),(8,2,0,'中莱建筑','','','大专教育','大专教育',NULL,NULL,NULL,NULL),(9,2,0,'中莱房地产','','','本科升学','本科升学',NULL,NULL,NULL,NULL),(10,2,0,'中莱物业','','','加拿大留学','加拿大留学',NULL,NULL,NULL,NULL),(11,2,0,'中莱俱乐部','','','热门专业','热门专业',NULL,NULL,NULL,NULL),(12,2,0,'中莱装饰','','','学习规划','学习规划',NULL,NULL,NULL,NULL),(13,2,0,'中鲁门窗厂','','','八大理由','八大理由',NULL,NULL,NULL,NULL),(14,2,0,'中粮建材','','','校园新闻','校园新闻',NULL,NULL,NULL,'2017-05-18/591db502b556b.jpg'),(15,2,0,'中莱工程咨询','','','就业咨询','就业咨询',NULL,NULL,NULL,NULL),(16,2,0,'天韵光伏','','',' 文化生活',' 文化生活',NULL,NULL,NULL,NULL),(17,5,0,'党群工作','','',' 毕业生风','毕业生风',NULL,NULL,NULL,NULL),(18,5,0,'工会工作','','','我们的优势','我们的优势',NULL,NULL,NULL,NULL),(19,5,0,'团青工作','','','','',NULL,NULL,NULL,NULL),(20,0,0,'资讯中心','','','','',NULL,NULL,NULL,NULL),(21,20,0,'集团新闻','','','','',NULL,NULL,NULL,NULL),(22,20,0,'中莱要闻','','','','',NULL,NULL,NULL,NULL),(23,20,0,'下属动态','','','','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `think_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_config`
--

DROP TABLE IF EXISTS `think_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '平台名称',
  `keywords` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '平台关键词',
  `description` varchar(600) CHARACTER SET utf8 NOT NULL COMMENT '平台描述',
  `qq_1` varchar(30) NOT NULL COMMENT 'qq1',
  `qq_2` varchar(30) NOT NULL COMMENT 'qq2',
  `address` varchar(50) NOT NULL COMMENT '地址',
  `consult` text NOT NULL COMMENT '咨询插件',
  `copyright` varchar(600) CHARACTER SET utf8 NOT NULL COMMENT '平台版权信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk COMMENT='全局配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_config`
--

LOCK TABLES `think_config` WRITE;
/*!40000 ALTER TABLE `think_config` DISABLE KEYS */;
INSERT INTO `think_config` VALUES (1,'山东中莱建设集团有限公司','山东中莱建设集团有限公司','山东中莱建设集团有限公司','1170852085','123456','辽宁省大连市经济技术开发区32号小区支一路 ','http://api.pop800.com/chat/283916','沪ICP备09038394号 Copyright©2006-2016 Hiknow Inc.All Rights Reserved.');
/*!40000 ALTER TABLE `think_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_education_links`
--

DROP TABLE IF EXISTS `think_education_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_education_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片标题',
  `pic` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片路径',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '链接跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='幻灯片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_education_links`
--

LOCK TABLES `think_education_links` WRITE;
/*!40000 ALTER TABLE `think_education_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_education_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_member`
--

DROP TABLE IF EXISTS `think_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `login_ip` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '登录ip',
  `login_time` datetime NOT NULL COMMENT '登录时间',
  `login_count` int(11) NOT NULL COMMENT '登录次数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_member`
--

LOCK TABLES `think_member` WRITE;
/*!40000 ALTER TABLE `think_member` DISABLE KEYS */;
INSERT INTO `think_member` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','127.0.0.1','2018-06-18 11:31:57',40,1);
/*!40000 ALTER TABLE `think_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_mob_slide`
--

DROP TABLE IF EXISTS `think_mob_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_mob_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片标题',
  `pic` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片路径',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '链接跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk COMMENT='幻灯片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_mob_slide`
--

LOCK TABLES `think_mob_slide` WRITE;
/*!40000 ALTER TABLE `think_mob_slide` DISABLE KEYS */;
INSERT INTO `think_mob_slide` VALUES (1,'幻灯1','2017-04-19/58f74886856ea.jpg',''),(2,'幻灯2','2017-04-19/58f74895aa991.jpg',''),(3,'幻灯3','2017-04-19/58f748a162a35.jpg','');
/*!40000 ALTER TABLE `think_mob_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_obtain_links`
--

DROP TABLE IF EXISTS `think_obtain_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_obtain_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片标题',
  `pic` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片路径',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '链接跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='幻灯片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_obtain_links`
--

LOCK TABLES `think_obtain_links` WRITE;
/*!40000 ALTER TABLE `think_obtain_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_obtain_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_slide`
--

DROP TABLE IF EXISTS `think_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片标题',
  `pic` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片路径',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '链接跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk COMMENT='幻灯片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_slide`
--

LOCK TABLES `think_slide` WRITE;
/*!40000 ALTER TABLE `think_slide` DISABLE KEYS */;
INSERT INTO `think_slide` VALUES (1,'幻灯1','2018-06-18/5b2727d5dc757.jpg',''),(2,'幻灯2','2018-06-18/5b2727e72bf13.jpg',''),(3,'幻灯3','2018-06-18/5b2727f62aee5.jpg','');
/*!40000 ALTER TABLE `think_slide` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-19 10:18:37
