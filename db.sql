/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmx6010
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmx6010` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmx6010`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205861567 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-20 09:47:26',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-20 09:47:26',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-20 09:47:26',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-20 09:47:26',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-20 09:47:26',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-20 09:47:26',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616205861566,'2021-03-20 10:04:21',1616205655762,'广东省梅州市梅江区江南街道中国人民银行(梅州市中心支行)','11','11122222222','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'zhusuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205803848 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmx6010/upload/1616205623200.jpg'),(2,'picture2','http://localhost:8080/ssmx6010/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmx6010/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussjingdianmeishi` */

DROP TABLE IF EXISTS `discussjingdianmeishi`;

CREATE TABLE `discussjingdianmeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='景点美食评论表';

/*Data for the table `discussjingdianmeishi` */

insert  into `discussjingdianmeishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-03-20 09:47:26',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-20 09:47:26',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-20 09:47:26',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-20 09:47:26',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-20 09:47:26',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-20 09:47:26',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussjingdianxinxi` */

DROP TABLE IF EXISTS `discussjingdianxinxi`;

CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205751689 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';

/*Data for the table `discussjingdianxinxi` */

insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-03-20 09:47:26',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-20 09:47:26',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-20 09:47:26',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-20 09:47:26',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-20 09:47:26',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-20 09:47:26',6,6,'用户名6','评论内容6','回复内容6'),(1616205751688,'2021-03-20 10:02:30',1616205522794,1616205655762,'11','少电饭锅士大夫',NULL);

/*Table structure for table `discussluxianguihua` */

DROP TABLE IF EXISTS `discussluxianguihua`;

CREATE TABLE `discussluxianguihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205781827 DEFAULT CHARSET=utf8 COMMENT='路线规划评论表';

/*Data for the table `discussluxianguihua` */

insert  into `discussluxianguihua`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-03-20 09:47:26',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-20 09:47:26',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-20 09:47:26',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-20 09:47:26',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-20 09:47:26',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-20 09:47:26',6,6,'用户名6','评论内容6','回复内容6'),(1616205781826,'2021-03-20 10:03:01',1616205548061,1616205655762,'11','的法国德国',NULL);

/*Table structure for table `discusszhusuxinxi` */

DROP TABLE IF EXISTS `discusszhusuxinxi`;

CREATE TABLE `discusszhusuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='住宿信息评论表';

/*Data for the table `discusszhusuxinxi` */

insert  into `discusszhusuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (161,'2021-03-20 09:47:26',1,1,'用户名1','评论内容1','回复内容1'),(162,'2021-03-20 09:47:26',2,2,'用户名2','评论内容2','回复内容2'),(163,'2021-03-20 09:47:26',3,3,'用户名3','评论内容3','回复内容3'),(164,'2021-03-20 09:47:26',4,4,'用户名4','评论内容4','回复内容4'),(165,'2021-03-20 09:47:26',5,5,'用户名5','评论内容5','回复内容5'),(166,'2021-03-20 09:47:26',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jingdianmeishi` */

DROP TABLE IF EXISTS `jingdianmeishi`;

CREATE TABLE `jingdianmeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishileixing` varchar(200) DEFAULT NULL COMMENT '美食类型',
  `meishitupian` varchar(200) DEFAULT NULL COMMENT '美食图片',
  `meishijieshao` longtext COMMENT '美食介绍',
  `meishixiangqing` longtext COMMENT '美食详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205574049 DEFAULT CHARSET=utf8 COMMENT='景点美食';

/*Data for the table `jingdianmeishi` */

insert  into `jingdianmeishi`(`id`,`addtime`,`meishimingcheng`,`meishileixing`,`meishitupian`,`meishijieshao`,`meishixiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (51,'2021-03-20 09:47:26','美食名称1','美食类型1','http://localhost:8080/ssmx6010/upload/jingdianmeishi_meishitupian1.jpg','美食介绍1','美食详情1',1,1,'2021-03-20 09:47:26',1,99.9),(52,'2021-03-20 09:47:26','美食名称2','美食类型2','http://localhost:8080/ssmx6010/upload/jingdianmeishi_meishitupian2.jpg','美食介绍2','美食详情2',2,2,'2021-03-20 09:47:26',2,99.9),(53,'2021-03-20 09:47:26','美食名称3','美食类型3','http://localhost:8080/ssmx6010/upload/jingdianmeishi_meishitupian3.jpg','美食介绍3','美食详情3',3,3,'2021-03-20 09:47:26',3,99.9),(54,'2021-03-20 09:47:26','美食名称4','美食类型4','http://localhost:8080/ssmx6010/upload/jingdianmeishi_meishitupian4.jpg','美食介绍4','美食详情4',4,4,'2021-03-20 09:47:26',4,99.9),(55,'2021-03-20 09:47:26','美食名称5','美食类型5','http://localhost:8080/ssmx6010/upload/jingdianmeishi_meishitupian5.jpg','美食介绍5','美食详情5',6,5,'2021-03-20 10:04:29',8,99.9),(56,'2021-03-20 09:47:26','美食名称6','美食类型6','http://localhost:8080/ssmx6010/upload/jingdianmeishi_meishitupian6.jpg','美食介绍6','美食详情6',6,6,'2021-03-20 09:47:26',6,99.9),(1616205574048,'2021-03-20 09:59:33','多个地方地方','发过的好发给很反感','http://localhost:8080/ssmx6010/upload/1616205555971.jpg','富贵华府发过火fg','<p>等他一会让他有法国恢复规划发给 发过火凤凰、</p><p><img src=\"http://localhost:8080/ssmx6010/upload/1616205572280.jpeg\"></p>',0,0,NULL,0,50);

/*Table structure for table `jingdianxinxi` */

DROP TABLE IF EXISTS `jingdianxinxi`;

CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `jiaotongzhuangkuang` varchar(200) DEFAULT NULL COMMENT '交通状况',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jingdianfengmian` varchar(200) DEFAULT NULL COMMENT '景点封面',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `jingdianxiangqing` longtext COMMENT '景点详情',
  `yingyeshijian` varchar(200) DEFAULT NULL COMMENT '营业时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205522795 DEFAULT CHARSET=utf8 COMMENT='景点信息';

/*Data for the table `jingdianxinxi` */

insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandengji`,`jiaotongzhuangkuang`,`lianxiren`,`lianxidianhua`,`jingdianfengmian`,`jingdiandizhi`,`jingdianxiangqing`,`yingyeshijian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (31,'2021-03-20 09:47:26','景点名称1','景点类型1','1A','顺畅','联系人1','联系电话1','http://localhost:8080/ssmx6010/upload/jingdianxinxi_jingdianfengmian1.jpg','景点地址1','景点详情1','营业时间1',1,1,'2021-03-20 09:47:26',1,99.9),(32,'2021-03-20 09:47:26','景点名称2','景点类型2','1A','顺畅','联系人2','联系电话2','http://localhost:8080/ssmx6010/upload/jingdianxinxi_jingdianfengmian2.jpg','景点地址2','景点详情2','营业时间2',2,2,'2021-03-20 09:47:26',2,99.9),(33,'2021-03-20 09:47:26','景点名称3','景点类型3','1A','顺畅','联系人3','联系电话3','http://localhost:8080/ssmx6010/upload/jingdianxinxi_jingdianfengmian3.jpg','景点地址3','景点详情3','营业时间3',3,3,'2021-03-20 09:47:26',3,99.9),(34,'2021-03-20 09:47:26','景点名称4','景点类型4','1A','顺畅','联系人4','联系电话4','http://localhost:8080/ssmx6010/upload/jingdianxinxi_jingdianfengmian4.jpg','景点地址4','景点详情4','营业时间4',4,4,'2021-03-20 09:47:26',4,99.9),(35,'2021-03-20 09:47:26','景点名称5','景点类型5','1A','顺畅','联系人5','联系电话5','http://localhost:8080/ssmx6010/upload/jingdianxinxi_jingdianfengmian5.jpg','景点地址5','景点详情5','营业时间5',5,5,'2021-03-20 09:47:26',5,99.9),(36,'2021-03-20 09:47:26','景点名称6','景点类型6','1A','顺畅','联系人6','联系电话6','http://localhost:8080/ssmx6010/upload/jingdianxinxi_jingdianfengmian6.jpg','景点地址6','景点详情6','营业时间6',6,6,'2021-03-20 10:02:04',8,99.9),(1616205522794,'2021-03-20 09:58:42','的法国德国','电饭锅','3A','拥堵','发鬼地方','15151555111','http://localhost:8080/ssmx6010/upload/1616205507240.jpg','发鬼地方个','<p>郭德纲</p><p><img src=\"http://localhost:8080/ssmx6010/upload/1616205516673.jpg\"><img src=\"http://localhost:8080/ssmx6010/upload/1616205521168.jpg\"></p>','豆腐干豆腐给对方电饭锅',0,1,'2021-03-20 10:04:29',5,50);

/*Table structure for table `luxianguihua` */

DROP TABLE IF EXISTS `luxianguihua`;

CREATE TABLE `luxianguihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `tujingluduan` varchar(200) DEFAULT NULL COMMENT '途经路段',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangxiluxian` longtext COMMENT '详细路线',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205548062 DEFAULT CHARSET=utf8 COMMENT='路线规划';

/*Data for the table `luxianguihua` */

insert  into `luxianguihua`(`id`,`addtime`,`biaoti`,`jingdianmingcheng`,`jingdiandizhi`,`qidian`,`tujingluduan`,`zhongdian`,`tupian`,`xiangxiluxian`,`thumbsupnum`,`crazilynum`) values (41,'2021-03-20 09:47:26','标题1','景点名称1','景点地址1','起点1','途经路段1','终点1','http://localhost:8080/ssmx6010/upload/luxianguihua_tupian1.jpg','详细路线1',1,1),(42,'2021-03-20 09:47:26','标题2','景点名称2','景点地址2','起点2','途经路段2','终点2','http://localhost:8080/ssmx6010/upload/luxianguihua_tupian2.jpg','详细路线2',2,2),(43,'2021-03-20 09:47:26','标题3','景点名称3','景点地址3','起点3','途经路段3','终点3','http://localhost:8080/ssmx6010/upload/luxianguihua_tupian3.jpg','详细路线3',3,3),(44,'2021-03-20 09:47:26','标题4','景点名称4','景点地址4','起点4','途经路段4','终点4','http://localhost:8080/ssmx6010/upload/luxianguihua_tupian4.jpg','详细路线4',4,5),(45,'2021-03-20 09:47:26','标题5','景点名称5','景点地址5','起点5','途经路段5','终点5','http://localhost:8080/ssmx6010/upload/luxianguihua_tupian5.jpg','详细路线5',5,5),(46,'2021-03-20 09:47:26','标题6','景点名称6','景点地址6','起点6','途经路段6','终点6','http://localhost:8080/ssmx6010/upload/luxianguihua_tupian6.jpg','详细路线6',6,6),(1616205548061,'2021-03-20 09:59:07','肥嘟嘟','的法国德国','发鬼地方个','豆腐干豆腐电饭锅','发过的f','电饭锅地方地方地方','http://localhost:8080/ssmx6010/upload/1616205544455.jpeg','法国德国地方地方地方地方放到好地方',0,0);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205813121 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-03-20 09:47:26',1,'用户名1','留言内容1','电饭锅地方'),(122,'2021-03-20 09:47:26',2,'用户名2','留言内容2','回复内容2'),(123,'2021-03-20 09:47:26',3,'用户名3','留言内容3','回复内容3'),(124,'2021-03-20 09:47:26',4,'用户名4','留言内容4','回复内容4'),(125,'2021-03-20 09:47:26',5,'用户名5','留言内容5','回复内容5'),(126,'2021-03-20 09:47:26',6,'用户名6','留言内容6','回复内容6'),(1616205813120,'2021-03-20 10:03:32',1616205655762,'11','豆腐干豆腐电饭锅地方',NULL);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'zhusuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205870257 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616205869758,'2021-03-20 10:04:29','20213201032641102570','zhusuxinxi',1616205655762,1616205602966,'规范化发挥','http://localhost:8080/ssmx6010/upload/1616205586107.jpeg',2,52,52,253.9,104,1,'已完成','广东省梅州市梅江区江南街道中国人民银行(梅州市中心支行)'),(1616205870241,'2021-03-20 10:04:29','20213201032640416602','jingdianxinxi',1616205655762,1616205522794,'的法国德国','http://localhost:8080/ssmx6010/upload/1616205507240.jpg',1,50,50,253.9,50,1,'已发货','广东省梅州市梅江区江南街道中国人民银行(梅州市中心支行)'),(1616205870256,'2021-03-20 10:04:29','20213201032640829858','jingdianmeishi',1616205655762,55,'美食名称5','http://localhost:8080/ssmx6010/upload/jingdianmeishi_meishitupian5.jpg',1,99.9,99.9,253.9,99.9,1,'已发货','广东省梅州市梅江区江南街道中国人民银行(梅州市中心支行)');

/*Table structure for table `qiantai` */

DROP TABLE IF EXISTS `qiantai`;

CREATE TABLE `qiantai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiantaizhanghao` varchar(200) NOT NULL COMMENT '前台账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiantaixingming` varchar(200) DEFAULT NULL COMMENT '前台姓名',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiantaizhanghao` (`qiantaizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205975589 DEFAULT CHARSET=utf8 COMMENT='前台';

/*Data for the table `qiantai` */

insert  into `qiantai`(`id`,`addtime`,`qiantaizhanghao`,`mima`,`qiantaixingming`,`zhiwei`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (21,'2021-03-20 09:47:26','前台1','123456','前台姓名1','前台','男','13823888881','773890001@qq.com','http://localhost:8080/ssmx6010/upload/qiantai_zhaopian1.jpg','地址1',100),(22,'2021-03-20 09:47:26','前台2','123456','前台姓名2','前台','男','13823888882','773890002@qq.com','http://localhost:8080/ssmx6010/upload/qiantai_zhaopian2.jpg','地址2',100),(23,'2021-03-20 09:47:26','前台3','123456','前台姓名3','前台','男','13823888883','773890003@qq.com','http://localhost:8080/ssmx6010/upload/qiantai_zhaopian3.jpg','地址3',100),(24,'2021-03-20 09:47:26','前台4','123456','前台姓名4','前台','男','13823888884','773890004@qq.com','http://localhost:8080/ssmx6010/upload/qiantai_zhaopian4.jpg','地址4',100),(25,'2021-03-20 09:47:26','前台5','123456','前台姓名5','前台','男','13823888885','773890005@qq.com','http://localhost:8080/ssmx6010/upload/qiantai_zhaopian5.jpg','地址5',100),(26,'2021-03-20 09:47:26','前台6','123456','前台姓名6','前台','男','13823888886','773890006@qq.com','http://localhost:8080/ssmx6010/upload/qiantai_zhaopian6.jpg','地址6',100),(1616205975588,'2021-03-20 10:06:15','22','22','撒打算','前台','女','11122222333','33@qq.com','http://localhost:8080/ssmx6010/upload/1616205990061.jpeg','发送到发送到',0);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205793957 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616205760631,'2021-03-20 10:02:39',1616205655762,1616205522794,'jingdianxinxi','的法国德国','http://localhost:8080/ssmx6010/upload/1616205507240.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','5puysd5cba7ntrg82n7o207fy56zital','2021-03-20 09:57:38','2021-03-20 11:05:28'),(2,1616205655762,'11','yonghu','用户','4la00fe1svflb1lgsfuiuqqizufdpaun','2021-03-20 10:01:27','2021-03-20 11:05:40'),(3,1616205975588,'22','qiantai','前台','ulrw086am3v4mru14t1ozbzp3dt6ec0k','2021-03-20 10:06:20','2021-03-20 11:06:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-20 09:47:26');

/*Table structure for table `yaoqingxinxi` */

DROP TABLE IF EXISTS `yaoqingxinxi`;

CREATE TABLE `yaoqingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `yaoqingshijian` varchar(200) DEFAULT NULL COMMENT '邀请时间',
  `yaoqingren` varchar(200) DEFAULT NULL COMMENT '邀请人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205680847 DEFAULT CHARSET=utf8 COMMENT='邀请信息';

/*Data for the table `yaoqingxinxi` */

insert  into `yaoqingxinxi`(`id`,`addtime`,`biaoti`,`neirong`,`yaoqingshijian`,`yaoqingren`,`lianxidianhua`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`) values (71,'2021-03-20 09:47:26','标题1','内容1','邀请时间1','邀请人1','联系电话1','账号1','姓名1','手机1','是',''),(72,'2021-03-20 09:47:26','标题2','内容2','邀请时间2','邀请人2','联系电话2','账号2','姓名2','手机2','是',''),(73,'2021-03-20 09:47:26','标题3','内容3','邀请时间3','邀请人3','联系电话3','账号3','姓名3','手机3','是',''),(74,'2021-03-20 09:47:26','标题4','内容4','邀请时间4','邀请人4','联系电话4','账号4','姓名4','手机4','是',''),(75,'2021-03-20 09:47:26','标题5','内容5','邀请时间5','邀请人5','联系电话5','账号5','姓名5','手机5','是',''),(76,'2021-03-20 09:47:26','标题6','内容6','邀请时间6','邀请人6','联系电话6','账号6','姓名6','手机6','是',''),(1616205680846,'2021-03-20 10:01:20','需需','大范甘迪电饭锅地方电饭锅梵蒂冈地方地方地方','发过的多个','电饭锅地方','15111111111','11','ad阿斯顿发生','11122222111','是','好的 有时间回去');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205655763 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (11,'2021-03-20 09:47:26','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmx6010/upload/yonghu_zhaopian1.jpg','地址1',100),(12,'2021-03-20 09:47:26','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmx6010/upload/yonghu_zhaopian2.jpg','地址2',100),(13,'2021-03-20 09:47:26','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmx6010/upload/yonghu_zhaopian3.jpg','地址3',100),(14,'2021-03-20 09:47:26','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmx6010/upload/yonghu_zhaopian4.jpg','地址4',100),(15,'2021-03-20 09:47:26','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmx6010/upload/yonghu_zhaopian5.jpg','地址5',100),(16,'2021-03-20 09:47:26','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmx6010/upload/yonghu_zhaopian6.jpg','地址6',100),(1616205655762,'2021-03-20 10:00:55','11','abo','ad阿斯顿发生','男','11122222111','11@qq.com','http://localhost:8080/ssmx6010/upload/1616205824167.jpeg','地方收到士大夫收到',49238.3);

/*Table structure for table `zhusuxinxi` */

DROP TABLE IF EXISTS `zhusuxinxi`;

CREATE TABLE `zhusuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) NOT NULL COMMENT '酒店名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `xingji` varchar(200) DEFAULT NULL COMMENT '星级',
  `jiudiantupian` varchar(200) DEFAULT NULL COMMENT '酒店图片',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiudianjieshao` longtext COMMENT '酒店介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616205602967 DEFAULT CHARSET=utf8 COMMENT='住宿信息';

/*Data for the table `zhusuxinxi` */

insert  into `zhusuxinxi`(`id`,`addtime`,`jiudianmingcheng`,`leibie`,`xingji`,`jiudiantupian`,`jiudiandizhi`,`lianxiren`,`lianxidianhua`,`jiudianjieshao`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (61,'2021-03-20 09:47:26','酒店名称1','民宿','一星','http://localhost:8080/ssmx6010/upload/zhusuxinxi_jiudiantupian1.jpg','酒店地址1','联系人1','13823888881','酒店介绍1',1,1,'2021-03-20 09:47:26',1,99.9),(62,'2021-03-20 09:47:26','酒店名称2','民宿','一星','http://localhost:8080/ssmx6010/upload/zhusuxinxi_jiudiantupian2.jpg','酒店地址2','联系人2','13823888882','酒店介绍2',2,2,'2021-03-20 09:47:26',2,99.9),(63,'2021-03-20 09:47:26','酒店名称3','民宿','一星','http://localhost:8080/ssmx6010/upload/zhusuxinxi_jiudiantupian3.jpg','酒店地址3','联系人3','13823888883','酒店介绍3',3,3,'2021-03-20 09:47:26',3,99.9),(64,'2021-03-20 09:47:26','酒店名称4','民宿','一星','http://localhost:8080/ssmx6010/upload/zhusuxinxi_jiudiantupian4.jpg','酒店地址4','联系人4','13823888884','酒店介绍4',4,4,'2021-03-20 09:47:26',4,99.9),(65,'2021-03-20 09:47:26','酒店名称5','民宿','一星','http://localhost:8080/ssmx6010/upload/zhusuxinxi_jiudiantupian5.jpg','酒店地址5','联系人5','13823888885','酒店介绍5',5,5,'2021-03-20 09:47:26',5,99.9),(66,'2021-03-20 09:47:26','酒店名称6','民宿','一星','http://localhost:8080/ssmx6010/upload/zhusuxinxi_jiudiantupian6.jpg','酒店地址6','联系人6','13823888886','酒店介绍6',6,6,'2021-03-20 10:02:09',7,99.9),(1616205602966,'2021-03-20 10:00:02','规范化发挥','民宿','四星','http://localhost:8080/ssmx6010/upload/1616205586107.jpeg','发鬼地方地方','多个大幅度g','15111111111','<p>电饭锅大范甘迪发地方关掉地方</p>',0,0,'2021-03-20 10:04:29',3,52);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
