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
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_article`
--

LOCK TABLES `think_article` WRITE;
/*!40000 ALTER TABLE `think_article` DISABLE KEYS */;
INSERT INTO `think_article` VALUES (1,1,'企业简介','企业简介','2018-06-30 15:36:55','','','企业简介','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/20180619/1529393746124473.jpg&quot; title=&quot;1529393746124473.jpg&quot; alt=&quot;简介用图.jpg&quot;/&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;a&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:2em;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;山东中莱集团坐落于风景秀丽、美丽富饶的海滨城市——龙口，成立于一九九二年，现已发展成一个集建筑安装、房地产开发与销售、物业管理、装饰装修、塑钢门窗、餐饮洗浴、宾馆服务、建材经营、工程咨询等多种产业为一体的综合性企业集团，走出了一条”一业为主，多业并举，求真务实、稳健经营“的多元化发展道路。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:2em;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;拥有专业经济技术管理人员300余人，现为国家建筑工程施工总承包壹级资质企业，通过ISO9001国际质量管理体系认证。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:2em;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;下设山东中莱建设集团有限公司、龙口市中莱房地有限公司产、龙口市中莱装饰有限公司、龙口市中鲁建筑有限公司（中澳合资）、龙口市中莱俱乐部有限公司、龙口市中莱工程咨询有限公司、龙口市中莱物业管理有限公司、龙口市中莱建材有限公司、龙口市中鲁门窗厂等基层单位。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',76),(2,2,'中莱建筑','中莱建筑','2018-06-29 20:59:57','','','中莱建筑','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;http://localhost/DaLianZhongGongXueXiao/#&quot;&gt;&lt;/a&gt;中莱建筑&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',14),(3,3,'学生成长','学生成长','2017-05-18 19:43:46','','','学生成长','','&lt;p&gt;学生成长&lt;/p&gt;','','','',0),(4,4,' 生活关怀',' 生活关怀','2017-05-18 19:44:49','','',' 生活关怀','','&lt;p&gt;生活关怀&lt;/p&gt;','','','',0),(5,5,'就业保障','就业保障','2017-05-18 19:52:10','','','就业保障','','&lt;p&gt;就业保障&lt;/p&gt;','','','',0),(6,6,'惠生政策','惠生政策','2017-05-18 19:55:16','','','惠生政策','','&lt;p&gt;惠生政策&lt;/p&gt;','','','',0),(7,7,'联系我们','联系我们','2017-05-18 19:57:15','','','联系我们','','&lt;p&gt;联系我们&lt;/p&gt;','','','',0),(8,8,'工商联综合体','','2018-06-18 22:00:28','2018-06-18/5b27bafc562bb.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;工商联综合体&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',2),(9,8,'糖酒大厦','','2018-06-18 22:00:14','2018-06-18/5b27baee34483.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;糖酒大厦&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',3),(10,8,'人民法院','','2018-06-18 22:00:41','2018-06-18/5b27bb0908779.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;人民法院&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',1),(11,8,'华东气体','','2018-06-18 22:00:58','2018-06-18/5b27bb1a9de20.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;华东气体&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',21),(12,18,'工会工作1','','2018-06-18 22:49:28','2018-06-18/5b27c678ddf59.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;spp 党群工作1&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(13,18,'工会工作2','','2018-06-18 22:49:17','2018-06-18/5b27c66d62437.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;党群工作2&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(14,18,'工会工作3','','2018-06-18 22:49:03','2018-06-18/5b27c65f37574.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;党群工作3&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',2),(15,9,'松韵园','','2018-06-18 22:53:03','2018-06-18/5b27c74f09dc9.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;松韵园&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(18,9,'中韵家苑','','2018-06-18 22:53:20','2018-06-18/5b27c760b86ce.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中韵家苑&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',13),(19,9,'天韵尚城','','2018-06-18 22:53:37','2018-06-18/5b27c77176023.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;天韵尚城&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',8),(17,13,'中鲁门窗厂1','','2017-05-18 13:43:40','2018-06-20/5b29e98cccf66.jpg','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中鲁门窗厂1&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',1),(20,17,'党群工作1','','2017-05-19 16:21:08','','','','','&lt;p&gt;平面美术设计&lt;/p&gt;','','','',0),(21,17,'党群工作2','','2017-05-19 16:21:26','','','','','&lt;p&gt;汽车检测及维修&lt;/p&gt;','','','',0),(22,17,'党群工作3','','2017-05-19 16:21:42','','','','','&lt;p&gt;机械装配&lt;/p&gt;','','','',0),(23,17,'党群工作4','','2017-05-19 16:21:54','','','','','&lt;p&gt;质检与技术文秘&lt;/p&gt;','','','',0),(24,17,'党群工作5','','2017-05-19 16:22:07','','','','','&lt;p&gt;电气技术&lt;/p&gt;','','','',0),(25,17,'党群工作6','','2017-05-19 16:22:21','','','','','&lt;p&gt;加工中心技术&lt;/p&gt;','','','',0),(26,17,'党群工作7','','2017-05-19 16:22:34','','','','','&lt;p&gt;模具制造&lt;/p&gt;','','','',2),(27,17,'党群工作8','','2017-05-19 16:22:49','','','','','&lt;p&gt;数控加工技术&lt;/p&gt;','','','',0),(28,14,'中粮建材1','','2017-05-19 13:44:33','2018-06-20/5b29e9c18dbbf.jpg','','','百度','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中粮建材1&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',23),(44,23,'集团优势2','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势2&lt;/p&gt;','','','',0),(29,14,'中粮建材2','','2017-05-19 13:44:52','2018-06-20/5b29e9d484f73.jpg','','','百度','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;中粮建材2&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',14),(43,23,'集团优势1','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(30,1,'领导致辞','','2018-06-28 13:21:49','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/20180618/1529334424128643.jpg&quot; title=&quot;1529334424128643.jpg&quot; alt=&quot;ld_03.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 24px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;忆往昔 峥嵘岁月&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;我们山东中莱建设集团在风风雨雨中走过了23个春秋。二十多年来，在各级领导和社会各界人士的大力支持下，事业蓬勃发展。中莱人手中矗立起来的万千广厦，如凝固的音符，赞颂着山东中莱建设集团的辉煌过去；像金色的勋章，凝固着几代中莱人的智慧和汗水。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;; font-size: 24px;&quot;&gt;看今朝 豪情满胸怀&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;面对新的世纪、新的挑战，我们既充满深深的忧患意识、更满怀谋求更快更好发展的豪情。我们将进一步深化企业改革、强化企业管理，全面提升企业的整体素质，始终不渝的走质量兴业之路，以诚信优质的服务来赢得广大客户的青睐。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;; font-size: 24px;&quot;&gt;望未来 任重而道远&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;我们将以理性的经营理念，现代的管理方式，一流的施工技术和尽善尽美的服务自立于现代企业之林。我们坚信，有党的正确领导，有各级领导和社会各界人士的大力支持，山东中莱建设集团的明天会更加辉煌！&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',9),(31,1,'组织结构','','2018-06-27 23:16:55','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;山东中莱建设集团有限公司组织结构&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 24px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/20180618/1529334611552054.jpg&quot; title=&quot;1529334611552054.jpg&quot; alt=&quot;jg_032.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',10),(32,1,'企业文化','','2018-06-26 13:24:23','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;img src=&quot;http://localhost:82/Uploads/ueditor/20180618/1529334424128643.jpg&quot; title=&quot;1529334424128643.jpg&quot; alt=&quot;ld_03.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 24px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;忆往昔 峥嵘岁月&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;我们山东中莱建设集团在风风雨雨中走过了23个春秋。二十多年来，在各级领导和社会各界人士的大力支持下，事业蓬勃发展。中莱人手中矗立起来的万千广厦，如凝固的音符，赞颂着山东中莱建设集团的辉煌过去；像金色的勋章，凝固着几代中莱人的智慧和汗水。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;; font-size: 24px;&quot;&gt;看今朝 豪情满胸怀&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;面对新的世纪、新的挑战，我们既充满深深的忧患意识、更满怀谋求更快更好发展的豪情。我们将进一步深化企业改革、强化企业管理，全面提升企业的整体素质，始终不渝的走质量兴业之路，以诚信优质的服务来赢得广大客户的青睐。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;; font-size: 24px;&quot;&gt;望未来 任重而道远&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;我们将以理性的经营理念，现代的管理方式，一流的施工技术和尽善尽美的服务自立于现代企业之林。我们坚信，有党的正确领导，有各级领导和社会各界人士的大力支持，山东中莱建设集团的明天会更加辉煌！&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',12),(33,1,'资质荣誉','','2018-06-24 13:14:39','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/20180619/1529385207521545.jpg&quot; title=&quot;1529385207521545.jpg&quot; alt=&quot;关于我们-资质荣誉-02.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',12),(34,1,'发展历程','','2018-06-18 13:22:47','','','','','&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/20180619/1529385765827372.jpg&quot; title=&quot;1529385765827372.jpg&quot; alt=&quot;关于我们-发展历程-02.jpg&quot;/&gt;&lt;/p&gt;','','','',14),(35,2,'中莱房地产','','2018-06-29 21:00:10','','','中莱房地产','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中莱房地产&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(36,2,'中莱物业','','2018-06-27 21:00:29','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中莱物业&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(37,2,'中莱俱乐部','','2018-06-25 21:00:45','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中莱俱乐部&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(38,2,'中莱装饰','','2018-06-18 20:55:02','','','','','&lt;p&gt;中莱装饰&lt;/p&gt;','','','',0),(39,2,'中鲁门窗厂','','2018-06-01 20:57:06','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;中鲁门窗厂&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(40,2,'中粮建材','','2018-06-18 20:57:47','','','','','&lt;p&gt;中粮建材&lt;/p&gt;','','','',0),(41,2,'中莱工程咨询','','2018-06-18 20:58:04','','','','','&lt;p&gt;中莱工程咨询&lt;/p&gt;','','','',0),(42,2,'天韵光伏','','2018-05-01 20:58:28','','','','','&lt;p&gt;天韵光伏&lt;/p&gt;','','','',0),(69,20,'集团新闻1','','2018-06-01 15:47:34','','','','','&lt;p&gt;														&lt;/p&gt;&lt;p&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;												&lt;/p&gt;','','','',0),(70,20,'集团新闻2','','2018-06-19 15:47:50','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(45,23,'集团优势3','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势3&lt;/p&gt;','','','',0),(46,23,'集团优势4','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(47,23,'集团优势5','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(48,23,'集团优势6','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(49,23,'集团优势7','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(50,23,'集团优势8','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(51,23,'集团优势9','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(52,23,'集团优势10','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(53,23,'集团优势11','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(54,23,'集团优势12','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(55,23,'集团优势13','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(56,23,'集团优势14','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(57,23,'集团优势15','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(58,23,'集团优势16','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(59,23,'集团优势17','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(60,23,'集团优势18','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(61,23,'集团优势19','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(62,23,'集团优势20','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(63,25,'合作项目21','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(64,25,'合作项目22','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(65,25,'合作项目23','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(66,25,'合作项目24','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(67,25,'合作项目25','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(68,25,'合作项目26','','0000-00-00 00:00:00','','','','','&lt;p&gt;集团优势1&lt;/p&gt;','','','',0),(71,20,'集团新闻1','','2018-06-19 15:48:10','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(72,20,'集团新闻2','','2018-06-19 15:48:16','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(73,20,'集团新闻3','','2018-06-19 15:48:22','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(74,20,'集团新闻4','','2018-06-19 15:48:29','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(75,20,'集团新闻5','','2018-06-19 15:48:34','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(76,20,'集团新闻6','','2018-06-19 15:48:40','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(77,20,'集团新闻7','','2018-06-19 15:48:46','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(78,20,'集团新闻8','','2018-06-19 15:48:52','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(79,20,'集团新闻9','','2018-06-19 15:48:59','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(80,20,'集团新闻10','','2018-06-19 15:49:04','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(81,20,'集团新闻11','','2018-06-19 15:49:10','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(82,20,'集团新闻12','','2018-06-19 15:49:18','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(83,20,'集团新闻13','','2018-06-19 15:49:42','','','','','&lt;p style=&quot;white-space: normal;&quot;&gt;集团新闻1&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','',0),(84,20,'集团新闻14',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(85,20,'集团新闻15',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(86,20,'集团新闻16',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(87,20,'集团新闻17',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(88,20,'集团新闻18',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(89,20,'集团新闻19',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(90,20,'集团新闻20',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(91,20,'集团新闻21',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(92,20,'集团新闻22',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(93,20,'集团新闻23',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(94,20,'集团新闻24',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(95,20,'集团新闻25',NULL,'2018-06-19 15:49:42','','','','','','','','',0),(96,21,'公司视频1','','2018-06-19 15:56:01','','','','','&lt;p&gt;公司视频1&lt;/p&gt;','','','',0),(97,22,'行业动态1','','2018-06-19 15:56:34','','','','','&lt;p&gt;行业动态1&lt;/p&gt;','','','',0),(98,10,'中莱物业1','','2018-06-20 13:38:34','2018-06-20/5b29e85ae2d05.jpg','','','','','','','',0),(99,10,'中莱物业2','','2018-06-20 13:38:51','2018-06-20/5b29e86b12c99.jpg','','','','','','','',0),(100,11,'中莱俱乐部1','','2018-06-20 13:39:19','2018-06-20/5b29e887c27b3.jpg','','','','','','','',0),(101,11,'中莱俱乐部2','','2018-06-20 13:41:14','2018-06-20/5b29e8fa6c311.jpg','','','','','','','',0),(102,11,'中莱俱乐部3','','2018-06-20 13:41:24','2018-06-20/5b29e9046a9f4.jpg','','','','','','','',0),(103,11,'中莱俱乐部4','','2018-06-20 13:41:48','2018-06-20/5b29e91c39265.jpg','','','','','','','',0),(104,11,'中莱俱乐部5','','2018-06-20 13:42:02','2018-06-20/5b29e92ad4a0b.jpg','','','','','','','',0),(105,11,'中莱俱乐部6','','2018-06-20 13:42:15','2018-06-20/5b29e93728eca.jpg','','','','','','','',0),(106,12,'中莱装饰1','','2018-06-20 13:43:03','2018-06-20/5b29e9676663a.jpg','','','','','','','',0),(107,12,'中莱装饰2','','2018-06-20 13:43:14','2018-06-20/5b29e972376bc.jpg','','','','','','','',0),(108,13,'中鲁门窗厂2','','2018-06-20 13:43:58','2018-06-20/5b29e99e9cdf0.jpg','','','','','','','',0),(109,13,'中鲁门窗厂3','','2018-06-20 13:44:08','2018-06-20/5b29e9a846948.jpg','','','','','','','',0),(110,15,' 中莱工程咨询1','','2018-06-20 13:45:18','2018-06-20/5b29e9ee80721.jpg','','','','&lt;p&gt;&amp;nbsp;中莱工程咨询1&lt;/p&gt;','','','',0),(111,15,' 中莱工程咨询2','','2018-06-20 13:45:30','2018-06-20/5b29e9fad16db.jpg','','','','&lt;p&gt;&amp;nbsp;中莱工程咨询2&lt;/p&gt;','','','',0),(112,16,'天韵光伏  1','','2018-06-20 13:45:49','2018-06-20/5b29ea0d1dc07.jpg','','','','','','','',0),(113,16,'天韵光伏 2','','2018-06-20 13:46:00','2018-06-20/5b29ea18881ce.jpg','','','','','','','',0),(114,16,'天韵光伏  3','','2018-06-20 13:46:10','2018-06-20/5b29ea2241b11.jpg','','','','','','','',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=gbk COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_column`
--

LOCK TABLES `think_column` WRITE;
/*!40000 ALTER TABLE `think_column` DISABLE KEYS */;
INSERT INTO `think_column` VALUES (1,0,0,'关于我们','','','学校介绍','学校介绍',NULL,'2018-06-19/5b289205583bb.jpg',NULL,NULL),(2,0,0,'产业中心','','','学习模式','产业中心',NULL,'2018-06-19/5b28af668959f.jpg',NULL,NULL),(3,0,0,'咨讯中心','','','学生成长','咨询中心',NULL,'2018-06-19/5b28b1a16ee64.jpg',NULL,NULL),(4,0,0,'合资合作','','','合资合作','合资合作',NULL,'2018-06-19/5b28b1acc8e6e.jpg',NULL,NULL),(5,0,0,'党群建设','','','党群建设','党群建设',NULL,'2018-06-19/5b28826ebe392.jpg',NULL,NULL),(6,0,0,'人才招聘','','','人才招聘','人才招聘',NULL,'2018-06-20/5b29ea9323491.jpg',NULL,NULL),(7,0,0,'联系我们','','','联系我们','联系我们',NULL,NULL,NULL,NULL),(8,2,0,'中莱建筑','','','大专教育','大专教育',NULL,NULL,NULL,NULL),(9,2,0,'中莱房地产','','','本科升学','本科升学',NULL,NULL,NULL,NULL),(10,2,0,'中莱物业','','','加拿大留学','加拿大留学',NULL,NULL,NULL,NULL),(11,2,0,'中莱俱乐部','','','热门专业','热门专业',NULL,NULL,NULL,NULL),(12,2,0,'中莱装饰','','','学习规划','学习规划',NULL,NULL,NULL,NULL),(13,2,0,'中鲁门窗厂','','','八大理由','八大理由',NULL,NULL,NULL,NULL),(14,2,0,'中粮建材','','','校园新闻','校园新闻',NULL,NULL,NULL,'2017-05-18/591db502b556b.jpg'),(15,2,0,'中莱工程咨询','','','就业咨询','就业咨询',NULL,NULL,NULL,NULL),(16,2,0,'天韵光伏','','',' 文化生活',' 文化生活',NULL,NULL,NULL,NULL),(17,5,0,'党群工作','','',' 毕业生风','党群工作',NULL,'2018-06-19/5b28844960c0d.jpg',NULL,NULL),(18,5,0,'工会工作','','','我们的优势','我们的优势',NULL,NULL,NULL,NULL),(19,5,0,'团青工作','','','','',NULL,NULL,NULL,NULL),(20,3,0,'集团新闻','','','','',NULL,'2018-06-19/5b28af719095e.jpg',NULL,NULL),(21,3,0,'公司视频','','','','',NULL,NULL,NULL,NULL),(22,3,0,'行业动态','','','','',NULL,NULL,NULL,NULL),(23,4,0,'集团优势','','','','',NULL,NULL,NULL,NULL),(24,4,0,'合作项目','',NULL,'','',NULL,NULL,NULL,NULL),(25,4,0,'合作企业','',NULL,'','',NULL,NULL,NULL,NULL),(26,4,0,'招商加盟','',NULL,'','',NULL,NULL,NULL,NULL),(27,4,0,'项目推进','',NULL,'','',NULL,NULL,NULL,NULL),(30,6,0,'在线招聘','','','','',NULL,NULL,NULL,NULL),(31,6,0,'在线申请','','','','',NULL,NULL,NULL,NULL),(32,6,0,'人才理念','','','','',NULL,NULL,NULL,NULL),(33,6,0,'常见问题','',NULL,'','',NULL,NULL,NULL,NULL),(34,6,0,'发展培训','',NULL,'','',NULL,NULL,NULL,NULL),(35,0,0,'','',NULL,'','',NULL,NULL,NULL,NULL),(36,7,0,'联系方式','','','','',NULL,NULL,NULL,NULL),(37,7,0,'客户留言','','','','',NULL,NULL,NULL,NULL),(38,7,0,'在线地图','','','','',NULL,NULL,NULL,NULL),(39,0,0,'','',NULL,'','',NULL,NULL,NULL,NULL),(40,0,0,'','',NULL,'','',NULL,NULL,NULL,NULL),(41,0,0,'','',NULL,'','',NULL,NULL,NULL,NULL),(42,0,0,'','',NULL,'','',NULL,NULL,NULL,NULL),(43,0,0,'','',NULL,'','',NULL,NULL,NULL,NULL),(44,0,0,'','',NULL,'','',NULL,NULL,NULL,NULL);
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
INSERT INTO `think_slide` VALUES (1,'幻灯1','2018-06-19/5b28821d9b279.jpg',''),(2,'幻灯2','2018-06-19/5b288236f26c4.jpg',''),(3,'幻灯3','2018-06-19/5b288255bf955.jpg','');
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

-- Dump completed on 2018-06-20 13:49:03
