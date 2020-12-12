/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.16-MariaDB : Database - sfeng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sfeng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sfeng`;

/*Table structure for table `sf_dingding` */

DROP TABLE IF EXISTS `sf_dingding`;

CREATE TABLE `sf_dingding` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(32) NOT NULL COMMENT '运送情况',
  `time` varchar(128) NOT NULL COMMENT '物流节点时间',
  `content` varchar(128) NOT NULL COMMENT '物流节点信息',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `sf_dingding` */

insert  into `sf_dingding`(`lid`,`transport`,`time`,`content`) values 
(1,'运送中','2020-12-11 10:25:30','离开郴州市 发往长沙市【郴州市】'),
(2,'运送中','2020-12-11 10:25:30','郴州市邮政速递物流公司国际快件监管中心已收件（揽投员姓名：侯云,联系电话:）【郴州市】'),
(3,'运送中','2020-12-11 10:25:30','离开长沙市 发往贵阳市（经转）【长沙市】'),
(4,'运送中','2020-12-11 10:25:30','到达贵阳市处理中心（经转）【贵阳市】'),
(5,'运送中','2020-12-11 10:25:30','离开贵阳市 发往毕节地区（经转）【贵阳市】'),
(6,'运送中','2020-12-11 10:25:30','离开贵阳市 发往下一城市（经转）【贵阳市】'),
(7,'运送中','2020-12-11 10:25:30','到达  纳雍县 处理中心【毕节地区】');

/*Table structure for table `sf_receiver_address` */

DROP TABLE IF EXISTS `sf_receiver_address`;

CREATE TABLE `sf_receiver_address` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户编号',
  `receiver` varchar(16) NOT NULL COMMENT '收件人姓名',
  `province` varchar(16) NOT NULL COMMENT '省',
  `city` varchar(16) NOT NULL COMMENT '市',
  `county` varchar(16) NOT NULL COMMENT '县',
  `address` varchar(128) NOT NULL COMMENT '详细地址',
  `cellphone` varchar(16) NOT NULL COMMENT '手机号码',
  `fixedphone` varchar(16) NOT NULL COMMENT '固定电话',
  `is_default` tinyint(1) NOT NULL COMMENT '布尔值，默认地址',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sf_receiver_address` */

insert  into `sf_receiver_address`(`aid`,`user_id`,`receiver`,`province`,`city`,`county`,`address`,`cellphone`,`fixedphone`,`is_default`) values 
(1,1,'北京市','北京市','北京市','海淀区','万寿路街道文博大厦','13596683865','010886080',0);

/*Table structure for table `sf_tracking` */

DROP TABLE IF EXISTS `sf_tracking`;

CREATE TABLE `sf_tracking` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL COMMENT '用户编号',
  `status` int(11) NOT NULL COMMENT '订单状态  1-等待付款  2-等待发货3-运输中  4-已签收  5-已取消',
  `order_time` varchar(128) NOT NULL COMMENT '下单时间',
  `deliver_time` varchar(128) NOT NULL COMMENT '#发货时间',
  `received_time` varchar(128) NOT NULL COMMENT '#签收时间',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `sf_tracking` */

insert  into `sf_tracking`(`aid`,`user_id`,`status`,`order_time`,`deliver_time`,`received_time`) values 
(1,'SF10086',3,'2020-12-11 08:25:30','2020-12-11 10:25:30','2020-12-15 10:25:30'),
(2,'SF10087',3,'2020-11-11 08:25:30','2020-11-11 10:25:30','2020-11-16 10:25:30'),
(3,'SF10088',4,'2020-12-08 08:25:30','2020-12-08 10:25:30','2020-12-14 10:25:30'),
(4,'SF10089',2,'2020-12-05 08:25:30','2020-12-05 11:25:30','2020-12-20 11:25:30'),
(5,'SF10090',2,'2020-11-28 08:25:30','2020-11-28 10:25:30','2020-11-15 10:25:30');

/*Table structure for table `sf_user` */

DROP TABLE IF EXISTS `sf_user`;

CREATE TABLE `sf_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户的ID，为用户的唯一标识，由系统自动生成',
  `uname` varchar(32) NOT NULL COMMENT '用户名',
  `upwd` varchar(32) NOT NULL COMMENT '密码',
  `phone` varchar(16) NOT NULL COMMENT '手机号码',
  `avatar` varchar(128) DEFAULT NULL COMMENT '头像路径',
  `user_name` varchar(32) NOT NULL COMMENT '真实姓名',
  `gender` int(11) DEFAULT NULL COMMENT '#性别  0-女  1-男',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `sf_user` */

insert  into `sf_user`(`uid`,`uname`,`upwd`,`phone`,`avatar`,`user_name`,`gender`) values 
(1,'xiaoming','123456','15237822961','00da335a266f21a80120ba3858f56a.jpg','小明',1),
(2,'xiaohong','123456','18039226928','001f075ad3feeda8012138670b58f0.jpg','小红',0),
(3,'xiaolin','123456','19949159687','0120cd5dc0e038a801209e1fc96ef7.jpg','小林',1),
(4,'dingding','123456','18637853365','0172ab5c63a267a801203d22e6502c.jpg','丁叮',1),
(5,'xiaohua','123456','16356336987','00183a5ab206aea80120be1472a6f5.jpg','小花',0);

/*Table structure for table `sf_xiaohong` */

DROP TABLE IF EXISTS `sf_xiaohong`;

CREATE TABLE `sf_xiaohong` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(32) NOT NULL COMMENT '运送情况',
  `time` varchar(128) NOT NULL COMMENT '物流节点时间',
  `content` varchar(128) NOT NULL COMMENT '物流节点信息',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `sf_xiaohong` */

insert  into `sf_xiaohong`(`lid`,`transport`,`time`,`content`) values 
(1,'待发货','2020-12-11 10:25:30','商品已经下单'),
(2,'待揽件','2020-12-11 10:25:30','包裹正在等待揽收'),
(3,'运送中','2020-12-11 10:25:30','广东省深圳市宝安区龙华一部公司 已收件'),
(4,'运送中','2020-12-11 10:25:30','广东省深圳市宝安区龙华公司 已打包'),
(5,'运送中','2020-12-11 10:25:30','广东省深圳市宝安区龙华公司 已发出,下一站 广东宝安接驳点'),
(6,'运送中','2020-12-11 10:25:30','广东宝安接驳点公司 已收入'),
(7,'运送中','2020-12-11 10:25:30','广东宝安接驳点公司 已发出,下一站 北京转运中心'),
(8,'运送中','2020-12-11 10:25:30','北京转运中心公司 已收入'),
(9,'运送中','2020-12-11 10:25:30','北京转运中心公司 已发出,下一站 北京市丰台区方庄'),
(10,'运送中','2020-12-11 10:25:30','北京市丰台区方庄 已收入'),
(11,'派件中','2020-12-11 10:25:30','【北京市】北京市丰台区方庄派件员：陈凯锋 电话：15311512034 当前正在为您派件'),
(12,'已签收','2020-12-11 10:25:30','亲，您的快递已到达富友收件宝快递柜，富友收件宝快递柜，15311512034');

/*Table structure for table `sf_xiaohua` */

DROP TABLE IF EXISTS `sf_xiaohua`;

CREATE TABLE `sf_xiaohua` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(32) NOT NULL COMMENT '运送情况',
  `time` varchar(128) NOT NULL COMMENT '物流节点时间',
  `content` varchar(128) NOT NULL COMMENT '物流节点信息',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `sf_xiaohua` */

insert  into `sf_xiaohua`(`lid`,`transport`,`time`,`content`) values 
(1,'待发货','2020-12-11 10:25:30','商品已经下单'),
(2,'待揽件','2020-12-11 10:25:30','包裹正在等待揽收');

/*Table structure for table `sf_xiaolin` */

DROP TABLE IF EXISTS `sf_xiaolin`;

CREATE TABLE `sf_xiaolin` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(32) NOT NULL COMMENT '迎送情况',
  `time` varchar(128) NOT NULL COMMENT '物流节点时间',
  `content` varchar(128) NOT NULL COMMENT '物流节点信息',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `sf_xiaolin` */

insert  into `sf_xiaolin`(`lid`,`transport`,`time`,`content`) values 
(1,'待发货','2020-12-11 10:25:30','商品已经下单'),
(2,'待揽件','2020-12-11 10:25:30','包裹正在等待揽收');

/*Table structure for table `sf_xiaoming` */

DROP TABLE IF EXISTS `sf_xiaoming`;

CREATE TABLE `sf_xiaoming` (
  `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `transport` varchar(32) NOT NULL COMMENT '运送情况',
  `time` varchar(128) NOT NULL COMMENT '物流节点时间',
  `content` varchar(128) NOT NULL COMMENT '物流节点信息',
  PRIMARY KEY (`lid`,`time`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `sf_xiaoming` */

insert  into `sf_xiaoming`(`lid`,`transport`,`time`,`content`) values 
(1,'待揽件','2020-12-11 10:25:30','【肥西快包】已收件,揽投员:徐洁'),
(2,'运送中','2020-12-11 10:25:30','离开【肥西快包】，下一站【合肥中心】'),
(3,'运送中','2020-12-11 10:25:30','到达【合肥中心】（经转）'),
(4,'运送中','2020-12-11 10:25:30','离开【合肥中心】，下一站【无锡集散】（经转）'),
(5,'运送中','2020-12-11 10:25:30','到达【无锡集散】（经转）'),
(6,'运送中','2020-12-11 10:25:30','离开【合肥中心】，下一站【无锡集散】（经转）'),
(7,'运送中','2020-12-11 10:25:30','到达【无锡集散】（经转）'),
(8,'运送中','2020-12-11 10:25:30','离开【无锡集散】，下一站【上海市徐德路处理中心】（经转）');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
