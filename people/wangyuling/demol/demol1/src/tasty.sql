/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50041
Source Host           : localhost:3306
Source Database       : tasty

Target Server Type    : MYSQL
Target Server Version : 50041
File Encoding         : 65001

Date: 2018-12-07 13:48:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleId` int(11) NOT NULL auto_increment,
  `articleName` varchar(50) default NULL,
  `publicTime` varchar(50) default NULL,
  `content` varchar(1000) default NULL,
  `typeId` int(11) default NULL,
  PRIMARY KEY  (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for `articletype`
-- ----------------------------
DROP TABLE IF EXISTS `articletype`;
CREATE TABLE `articletype` (
  `articleTypeId` int(11) NOT NULL auto_increment,
  `articleTypeName` varchar(50) default NULL,
  PRIMARY KEY  (`articleTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articletype
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL auto_increment,
  `communityId` int(11) default NULL,
  `commentDiscussion` varchar(200) default NULL,
  `commentTime` varchar(50) default NULL,
  `phone` int(11) default NULL,
  `commentReviewed` int(11) default NULL,
  PRIMARY KEY  (`commentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `community`
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `communityId` int(11) NOT NULL auto_increment,
  `time` varchar(50) default NULL,
  `content` varchar(255) default NULL,
  `address` varchar(50) default NULL,
  `img` varchar(1024) default NULL,
  `title` varchar(255) character set utf8 default NULL,
  `phone` int(11) default NULL,
  PRIMARY KEY  (`communityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES ('1', '08:00:00', 'sfd', 'address', null, null, '123');
INSERT INTO `community` VALUES ('2', '08:00:00', 'dy', 'address', null, null, '123');
INSERT INTO `community` VALUES ('3', '15:45', 'dyyy', 'address', '1.jpg', 'success', null);

-- ----------------------------
-- Table structure for `dishes`
-- ----------------------------
DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes` (
  `dishId` int(11) NOT NULL auto_increment,
  `dishesName` varchar(50) character set utf8 default NULL,
  `shopId` int(11) default NULL,
  PRIMARY KEY  (`dishId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dishes
-- ----------------------------
INSERT INTO `dishes` VALUES ('1', '热销', '2');
INSERT INTO `dishes` VALUES ('2', '优惠', '1');
INSERT INTO `dishes` VALUES ('3', '主食', '2');
INSERT INTO `dishes` VALUES ('4', '特色', '2');
INSERT INTO `dishes` VALUES ('5', '汤类', '2');
INSERT INTO `dishes` VALUES ('6', '折扣家常菜', '2');
INSERT INTO `dishes` VALUES ('7', '折扣凉菜', '3');
INSERT INTO `dishes` VALUES ('8', '酒水', '3');
INSERT INTO `dishes` VALUES ('9', '套餐类', '4');
INSERT INTO `dishes` VALUES ('10', '满减双人餐', '4');

-- ----------------------------
-- Table structure for `fastfood`
-- ----------------------------
DROP TABLE IF EXISTS `fastfood`;
CREATE TABLE `fastfood` (
  `fastfoodId` int(11) NOT NULL auto_increment,
  `fastfoodName` varchar(50) character set utf8 default NULL,
  `fastfoodPrice` int(11) default NULL,
  `introduce` varchar(200) character set utf8 default NULL,
  `shopId` int(11) default NULL,
  `dishId` int(11) default NULL,
  `fastfoodImg` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`fastfoodId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fastfood
-- ----------------------------
INSERT INTO `fastfood` VALUES ('1', '香米', '2', '此商品搭配菜品才能配送', '1', '1', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('2', '水煮肉片', '21', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '2', '2', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('3', '宫保鸡丁', '33', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '1', '4', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('4', '疙瘩汤', '4', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '2', '3', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('5', '小笼包', '5', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '3', '5', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('6', '鱼香肉丝', '56', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '4', '6', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('7', '水煮鱼', '43', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '4', '7', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('8', '水煮鱼', '43', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '4', '8', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('9', '混沌', '43', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '4', '9', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('10', '老鸭粉丝汤', '4', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '4', '10', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('11', '酸菜鱼', '36', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '4', '1', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('12', '木须肉', '78', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '1', '1', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('13', '亲亲肠', '65', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '1', '2', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('14', '老鸭粉丝汤', '45', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '1', '3', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('15', '老鸭粉丝汤', '34', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '1', '3', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('16', '老鸭粉丝汤', '43', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '2', '4', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('17', '老鸭粉丝汤', '34', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '3', '5', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('18', '老鸭粉丝汤', '433', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '3', '5', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('19', '老鸭粉丝汤', '245', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '3', '6', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('20', '老鸭粉丝汤', '64', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '3', '7', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('21', '老鸭粉丝汤', '34', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '4', '10', 'images/bing.png');
INSERT INTO `fastfood` VALUES ('22', '老鸭粉丝汤', '43', '选用优质五花肉、经过多道工序秘制而成、减、甜、鲜、香、', '2', '3', 'images/bing.png');

-- ----------------------------
-- Table structure for `food`
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `foodid` int(11) NOT NULL auto_increment,
  `foodName` varchar(30) character set utf8 collate utf8_unicode_ci default NULL,
  `foodMain` varchar(120) character set utf8 collate utf8_unicode_ci default NULL,
  `foodIngredients` varchar(120) character set utf8 collate utf8_unicode_ci default NULL,
  `foodOther` varchar(120) character set utf8 collate utf8_unicode_ci default NULL,
  `foodSteptext` varchar(1200) character set utf8 collate utf8_unicode_ci default NULL,
  `foodType` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `foodTip` varchar(1000) character set utf8 collate utf8_unicode_ci default NULL,
  `foodStepimg` varchar(1200) character set utf8 collate utf8_unicode_ci default NULL,
  `title` varchar(60) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`foodid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of food
-- ----------------------------

-- ----------------------------
-- Table structure for `foodtype`
-- ----------------------------
DROP TABLE IF EXISTS `foodtype`;
CREATE TABLE `foodtype` (
  `foodTypeId` int(11) NOT NULL auto_increment,
  `typeName` varchar(50) default NULL,
  `parentId` int(11) default NULL,
  PRIMARY KEY  (`foodTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of foodtype
-- ----------------------------

-- ----------------------------
-- Table structure for `myorder`
-- ----------------------------
DROP TABLE IF EXISTS `myorder`;
CREATE TABLE `myorder` (
  `orderuuid` varchar(100) NOT NULL default '',
  `fastfoodPrice` int(11) default NULL,
  `tableware` int(11) default NULL,
  `orderAddress` varchar(200) default NULL,
  `orderSex` char(10) default NULL,
  `orderLocation` varchar(20) default NULL,
  `orderTel` int(11) default NULL,
  `addInformation` varchar(50) default NULL,
  `phone` int(11) default NULL,
  `orderState` varchar(10) default NULL,
  `orderTime` varchar(50) default NULL,
  `shopId` int(11) default NULL,
  `shoppingFee` int(11) default NULL,
  PRIMARY KEY  (`orderuuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myorder
-- ----------------------------

-- ----------------------------
-- Table structure for `navigation`
-- ----------------------------
DROP TABLE IF EXISTS `navigation`;
CREATE TABLE `navigation` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navigation
-- ----------------------------
INSERT INTO `navigation` VALUES ('1', '网站首页');
INSERT INTO `navigation` VALUES ('2', '私人订制');
INSERT INTO `navigation` VALUES ('3', '美食资讯');
INSERT INTO `navigation` VALUES ('4', '果蔬商城');
INSERT INTO `navigation` VALUES ('5', '趣吃导航');
INSERT INTO `navigation` VALUES ('6', '美食分享');

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `orderDetailId` int(11) NOT NULL auto_increment,
  `uuid` varchar(100) character set utf8 NOT NULL,
  `fastfoodName` varchar(50) default NULL,
  `fastfoodNumber` int(11) default NULL,
  `singlePrice` int(11) default NULL,
  PRIMARY KEY  (`orderDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `ourprovide`
-- ----------------------------
DROP TABLE IF EXISTS `ourprovide`;
CREATE TABLE `ourprovide` (
  `ProvideId` int(11) NOT NULL auto_increment,
  `provideName` varchar(50) default NULL,
  `provideImg` varchar(140) default NULL,
  PRIMARY KEY  (`ProvideId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ourprovide
-- ----------------------------

-- ----------------------------
-- Table structure for `restaurant`
-- ----------------------------
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant` (
  `shopId` int(11) NOT NULL auto_increment,
  `shopName` varchar(40) character set utf8 default NULL,
  `arriveTime` int(11) default NULL,
  `sendFare` int(11) default NULL,
  `shopIntroduce` varchar(50) character set utf8 default NULL,
  `longitude` double default NULL,
  `latitude` double default NULL,
  `lawyerpeople` varchar(10) character set utf8 default NULL,
  `shopImg` varchar(50) character set utf8 default NULL,
  `FullReduce` varchar(50) character set utf8 default NULL,
  `sendFareMore` varchar(30) character set utf8 default NULL,
  PRIMARY KEY  (`shopId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of restaurant
-- ----------------------------
INSERT INTO `restaurant` VALUES ('1', '小龙蒸肉家常菜', '10', '6', '商家地址： 河北省石家庄市桥西区建东街东侧花鸟鱼虫市场裙112号\r\n营业时间： 10:00-14:3', '456', '43', '徐香丽', 'images/seller_avatar_256px.jpg', '满20减5元', '4元/公里');
INSERT INTO `restaurant` VALUES ('2', '粥品香坊', '15', '7', '商家地址： 河北省石家庄市桥西区建东街东侧花鸟鱼虫市场裙112号\r\n营业时间： 10:00-14:3', '2', '4', '小北河', 'images/seller_avatar_256px.jpg', '满45减29元', '2元/公里');
INSERT INTO `restaurant` VALUES ('3', '一杆秤麻辣烫', '20', '8', '商家地址： 河北省石家庄市桥西区建东街东侧花鸟鱼虫市场裙112号\r\n营业时间： 10:00-14:3', '234', '23', '寇雄', 'images/seller_avatar_256px.jpg', '满45减29元', '2元/公里');
INSERT INTO `restaurant` VALUES ('4', '熊熊蛋糕店', '30', '9', '营业时间： 10:00-14:3', '434', '34', '妙丽', 'images/seller_avatar_256px.jpg', '满90减2', '4元/公里');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `phone` varchar(11) NOT NULL default '0',
  `userName` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `registTime` varchar(50) default NULL,
  `userHeaderImg` varchar(50) default NULL,
  PRIMARY KEY  (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
