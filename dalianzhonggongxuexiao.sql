-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 05 月 20 日 00:03
-- 服务器版本: 5.5.40
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `dalianzhonggongxuexiao`
--

-- --------------------------------------------------------

--
-- 表的结构 `think_article`
--

CREATE TABLE IF NOT EXISTS `think_article` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文章表' AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `think_article`
--

INSERT INTO `think_article` (`id`, `column_id`, `title`, `title_en`, `post_time`, `thumb`, `keywords`, `descriptions`, `source`, `content`, `direction`, `course`, `obtain`, `click`) VALUES
(1, 1, '学校介绍', '学校介绍', '2017-05-18 19:32:58', '', '', '学校介绍', '', '&lt;p&gt;&lt;a&gt;学校介绍&lt;/a&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 0),
(2, 2, '学习模式', '学习模式', '2017-05-18 19:35:26', '', '', '学习模式', '', '&lt;p&gt;&lt;a href=&quot;http://localhost/DaLianZhongGongXueXiao/#&quot;&gt;&lt;/a&gt;学习模式&lt;/p&gt;', '', '', '', 0),
(3, 3, '学生成长', '学生成长', '2017-05-18 19:43:46', '', '', '学生成长', '', '&lt;p&gt;学生成长&lt;/p&gt;', '', '', '', 0),
(4, 4, ' 生活关怀', ' 生活关怀', '2017-05-18 19:44:49', '', '', ' 生活关怀', '', '&lt;p&gt;生活关怀&lt;/p&gt;', '', '', '', 0),
(5, 5, '就业保障', '就业保障', '2017-05-18 19:52:10', '', '', '就业保障', '', '&lt;p&gt;就业保障&lt;/p&gt;', '', '', '', 0),
(6, 6, '惠生政策', '惠生政策', '2017-05-18 19:55:16', '', '', '惠生政策', '', '&lt;p&gt;惠生政策&lt;/p&gt;', '', '', '', 0),
(7, 7, '联系我们', '联系我们', '2017-05-18 19:57:15', '', '', '联系我们', '', '&lt;p&gt;联系我们&lt;/p&gt;', '', '', '', 0),
(8, 8, '大专教育', '大专教育', '2017-05-18 21:13:27', '', '', '大专教育', '', '&lt;p&gt;大专教育&lt;/p&gt;', '', '', '', 0),
(9, 9, '本科升学', '本科升学', '2017-05-18 21:19:08', '', '', '本科升学', '', '&lt;p&gt;本科升学&lt;/p&gt;', '', '', '', 0),
(10, 10, '加拿大留学的优势与条件', '', '2017-05-19 01:38:44', '', '', '加拿大留学的优势与条件', '', '&lt;p&gt;加拿大留学的优势与条件&lt;/p&gt;', '', '', '', 0),
(11, 10, '我校的优势与教学模式', '', '2017-05-19 01:39:28', '', '', '我校的优势与教学模式', '', '&lt;p&gt;我校的优势与教学模式&lt;/p&gt;', '', '', '', 1),
(12, 10, 'spp 计划与合作学院', '', '2017-05-19 01:40:21', '', '', 'spp 计划与合作学院', '', '&lt;p&gt;spp 计划与合作学院&lt;/p&gt;', '', '', '', 0),
(13, 11, '计算机网络技术', '', '2017-05-19 17:02:09', '', '计算机网络技术', '计算机网络技术', '', '', '&lt;p&gt;计算机网络技术培养方向&lt;br/&gt;&lt;/p&gt;', '&lt;p&gt;计算机网络技术主要课程&lt;/p&gt;', '&lt;p&gt;计算机网络技术就业方向&lt;/p&gt;', 0),
(14, 11, '电子商务', '', '2017-05-19 16:19:39', '', '电子商务', '电子商务', '', '&lt;p&gt;电子商务&lt;/p&gt;', '', '', '', 0),
(15, 12, '学习规划', '', '2017-05-18 21:47:57', '', '', '学习规划', '', '&lt;p&gt;学习规划&lt;/p&gt;', '', '', '', 0),
(18, 14, '大重技校举行踢毽比赛', '', '2017-05-18 22:22:13', '', '', '大重技校举行踢毽比赛', '', '&lt;p&gt;大重技校举行踢毽比赛&lt;/p&gt;', '', '', '', 12),
(19, 11, '汽车装配与制造', '', '2017-05-19 16:20:10', '', '汽车装配与制造', '汽车装配与制造', '', '&lt;p&gt;汽车装配与制造&lt;/p&gt;', '', '', '', 0),
(17, 13, '八大理由', '', '2017-05-18 21:54:26', '', '', '八大理由', '', '&lt;p&gt;八大理由&lt;/p&gt;', '', '', '', 0),
(20, 11, '平面美术设计', '', '2017-05-19 16:21:08', '', '平面美术设计', '平面美术设计', '', '&lt;p&gt;平面美术设计&lt;/p&gt;', '', '', '', 0),
(21, 11, '汽车检测及维修', '', '2017-05-19 16:21:26', '', '汽车检测及维修', '汽车检测及维修', '', '&lt;p&gt;汽车检测及维修&lt;/p&gt;', '', '', '', 0),
(22, 11, '机械装配', '', '2017-05-19 16:21:42', '', '机械装配', '机械装配', '', '&lt;p&gt;机械装配&lt;/p&gt;', '', '', '', 0),
(23, 11, '质检与技术文秘', '', '2017-05-19 16:21:54', '', '质检与技术文秘', '质检与技术文秘', '', '&lt;p&gt;质检与技术文秘&lt;/p&gt;', '', '', '', 0),
(24, 11, '电气技术', '', '2017-05-19 16:22:07', '', '电气技术', '电气技术', '', '&lt;p&gt;电气技术&lt;/p&gt;', '', '', '', 0),
(25, 11, '加工中心技术', '', '2017-05-19 16:22:21', '', '加工中心技术', '加工中心技术', '', '&lt;p&gt;加工中心技术&lt;/p&gt;', '', '', '', 0),
(26, 11, '模具制造', '', '2017-05-19 16:22:34', '', '模具制造', '模具制造', '', '&lt;p&gt;模具制造&lt;/p&gt;', '', '', '', 2),
(27, 11, '数控加工技术', '', '2017-05-19 16:22:49', '', '数控加工技术', '数控加工技术', '', '&lt;p&gt;数控加工技术&lt;/p&gt;', '', '', '', 0),
(28, 14, '大重技校举行踢毽比赛1', '', '2017-05-19 22:30:53', '', '大重技校举行踢毽比赛1', '大重技校举行踢毽比赛1', '百度', '&lt;p&gt;大重技校举行踢毽比赛1&lt;/p&gt;', '', '', '', 23),
(29, 14, '大重技校举行踢毽比赛2', '', '2017-05-19 22:39:54', '', '大重技校举行踢毽比赛2', '大重技校举行踢毽比赛2', '百度', '&lt;p&gt;大重技校举行踢毽比赛2&lt;/p&gt;', '', '', '', 14);

-- --------------------------------------------------------

--
-- 表的结构 `think_auth_group`
--

CREATE TABLE IF NOT EXISTS `think_auth_group` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `think_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `think_auth_group_access` (
  `uid` int(10) unsigned NOT NULL,
  `group_id` tinyint(3) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_auth_rule`
--

CREATE TABLE IF NOT EXISTS `think_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `think_column`
--

CREATE TABLE IF NOT EXISTS `think_column` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=gbk COMMENT='栏目表' AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `think_column`
--

INSERT INTO `think_column` (`id`, `pid`, `type`, `name`, `en_name`, `other_en`, `keywords`, `descriptions`, `mob_title_pic`, `pc_pic`, `mob_pic`, `thumb`) VALUES
(1, 0, 0, '学校介绍', '', '', '学校介绍', '学校介绍', NULL, '2017-05-19/591dcd630e6a7.jpg', NULL, NULL),
(2, 0, 0, '学习模式', '', '', '学习模式', '学习模式', NULL, NULL, NULL, NULL),
(3, 0, 0, '学生成长', '', '', '学生成长', '学生成长', NULL, NULL, NULL, NULL),
(4, 0, 0, '生活关怀', '', '', '生活关怀', '生活关怀', NULL, NULL, NULL, NULL),
(5, 0, 0, '就业保障', '', '', '就业保障', '就业保障', NULL, NULL, NULL, NULL),
(6, 0, 0, '惠生政策', '', '', '惠生政策', '惠生政策', NULL, NULL, NULL, NULL),
(7, 0, 0, '联系我们', '', '', '联系我们', '联系我们', NULL, NULL, NULL, NULL),
(8, 0, 0, '大专教育', '', '', '大专教育', '大专教育', NULL, NULL, NULL, NULL),
(9, 0, 0, '本科升学', '', '', '本科升学', '本科升学', NULL, NULL, NULL, NULL),
(10, 0, 0, '加拿大留学', '', '', '加拿大留学', '加拿大留学', NULL, NULL, NULL, NULL),
(11, 0, 0, '热门专业', '', '', '热门专业', '热门专业', NULL, NULL, NULL, NULL),
(12, 0, 0, '学习规划', '', '', '学习规划', '学习规划', NULL, NULL, NULL, NULL),
(13, 0, 0, '八大理由', '', '', '八大理由', '八大理由', NULL, NULL, NULL, NULL),
(14, 0, 0, '校园新闻', '', '', '校园新闻', '校园新闻', NULL, NULL, NULL, '2017-05-18/591db502b556b.jpg'),
(15, 0, 0, '就业咨询', '', '', '就业咨询', '就业咨询', NULL, NULL, NULL, NULL),
(16, 0, 0, ' 文化生活', '', '', ' 文化生活', ' 文化生活', NULL, NULL, NULL, NULL),
(17, 0, 0, ' 毕业生风', '', '', ' 毕业生风', '毕业生风', NULL, NULL, NULL, NULL),
(18, 0, 0, '我们的优势', '', '', '我们的优势', '我们的优势', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_config`
--

CREATE TABLE IF NOT EXISTS `think_config` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=gbk COMMENT='全局配置表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `think_config`
--

INSERT INTO `think_config` (`id`, `name`, `keywords`, `description`, `qq_1`, `qq_2`, `address`, `consult`, `copyright`) VALUES
(1, '大连重工集团技工学校', '大连重工集团技工学校', '大连重工集团技工学校', '1170852085', '123456', '辽宁省大连市经济技术开发区32号小区支一路 ', 'http://api.pop800.com/chat/283916', '沪ICP备09038394号 Copyright©2006-2016 Hiknow Inc.All Rights Reserved.');

-- --------------------------------------------------------

--
-- 表的结构 `think_education_links`
--

CREATE TABLE IF NOT EXISTS `think_education_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片标题',
  `pic` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片路径',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '链接跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='幻灯片表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `think_member`
--

CREATE TABLE IF NOT EXISTS `think_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `login_ip` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '登录ip',
  `login_time` datetime NOT NULL COMMENT '登录时间',
  `login_count` int(11) NOT NULL COMMENT '登录次数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk COMMENT='用户表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `think_member`
--

INSERT INTO `think_member` (`id`, `username`, `password`, `login_ip`, `login_time`, `login_count`, `status`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '0.0.0.0', '2017-05-19 22:22:16', 39, 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_mob_slide`
--

CREATE TABLE IF NOT EXISTS `think_mob_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片标题',
  `pic` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片路径',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '链接跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk COMMENT='幻灯片表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `think_mob_slide`
--

INSERT INTO `think_mob_slide` (`id`, `title`, `pic`, `url`) VALUES
(1, '幻灯1', '2017-04-19/58f74886856ea.jpg', ''),
(2, '幻灯2', '2017-04-19/58f74895aa991.jpg', ''),
(3, '幻灯3', '2017-04-19/58f748a162a35.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `think_obtain_links`
--

CREATE TABLE IF NOT EXISTS `think_obtain_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片标题',
  `pic` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片路径',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '链接跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='幻灯片表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `think_slide`
--

CREATE TABLE IF NOT EXISTS `think_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片标题',
  `pic` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片路径',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '链接跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk COMMENT='幻灯片表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `think_slide`
--

INSERT INTO `think_slide` (`id`, `title`, `pic`, `url`) VALUES
(1, '幻灯1', '2017-05-18/591d9c1d7c385.jpg', ''),
(2, '幻灯2', '2017-05-18/591d9c095eab3.jpg', ''),
(3, '幻灯3', '2017-05-18/591d9bf4d5c35.jpg', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
