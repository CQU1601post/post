/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : post

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2017-05-06 13:24:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ad
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad` (
  `adId` int(4) NOT NULL AUTO_INCREMENT,
  `adTypeId` int(4) DEFAULT NULL,
  `upLoadTime` varchar(20) DEFAULT NULL,
  `userId` int(4) DEFAULT NULL,
  `postId` int(4) DEFAULT NULL,
  `firstPicAddr` varchar(50) DEFAULT NULL,
  `money` int(4) DEFAULT NULL,
  `sortValue` varchar(100) DEFAULT NULL,
  `checked` int(4) DEFAULT '0',
  `remark` varchar(50) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `exist` int(2) DEFAULT NULL,
  `click` int(10) DEFAULT NULL,
  `auditMark` int(10) DEFAULT NULL,
  `paymentTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adId`),
  KEY `tb_advertise_ibfk_1` (`adTypeId`),
  KEY `tb_advertise_ibfk_3` (`postId`),
  KEY `tb_advertise_ibfk_4` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=1966 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('7', '1', '20140320173118', '-1', '14', 'firstPics/1395307875093.jpg', '0', '20140320173118', '1', '', '250', '250', '1', '7', '0', null);
INSERT INTO `ad` VALUES ('8', '1', '20140320173215', '-1', '14', 'firstPics/1395307934637.jpg', '0', '20140320173215', '1', '', '250', '250', '1', '3', '0', null);
INSERT INTO `ad` VALUES ('9', '1', '20140320173224', '-1', '14', 'firstPics/1395307943940.jpg', '0', '20140320173224', '1', '', '250', '250', '1', '4', '0', null);
INSERT INTO `ad` VALUES ('10', '1', '20140320173240', '-1', '14', 'firstPics/1395307959774.jpg', '0', '20140320173240', '1', '', '250', '250', '1', '6', '0', null);
INSERT INTO `ad` VALUES ('11', '3', '20140320181112', '54', '16', 'firstPics/1395310271556.jpg', '0', '20140320181112', '1', '', '250', '250', '1', '7', '0', null);
INSERT INTO `ad` VALUES ('26', '1', '20140320205348', '56', '20', 'firstPics/1395320028202.jpg', '0', '20140320205348', '1', 'asdfghjkl', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('27', '1', '20140320222906', '55', '11', 'firstPics/1395325744516.jpg', '0', '20140320222906', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('80', '1', '20140321192307', '-1', '11', 'firstPics/1395400985601.jpg', '0', '20140321192307', '1', '', '250', '250', '1', '13', '0', null);
INSERT INTO `ad` VALUES ('81', '3', '20140321192412', '-1', '11', 'firstPics/1395401052116.jpg', '0', '20140321192412', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('82', '1', '20140321195010', '11', '11', 'firstPics/1395402609966.jpg', '0', '20140321195010', '1', '', '250', '250', '1', '32', '0', null);
INSERT INTO `ad` VALUES ('83', '1', '20140321195010', '11', '4', 'firstPics/1395402609966.jpg', '0', '20140321195010', '1', '', '250', '250', '1', '8', '0', '2017-05-04 10:37:05');
INSERT INTO `ad` VALUES ('84', '1', '20140321195010', '11', '5', 'firstPics/1395402609966.jpg', '0', '20140321195010', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('85', '1', '20140321202221', '-1', '11', 'firstPics/1395404540083.jpg', '0', '20140321202221', '1', '', '250', '250', '1', '5', '0', null);
INSERT INTO `ad` VALUES ('35', '2', '20140321104948', '-1', '11', 'firstPics/1395370188536.JPG', '0', '20140321104948', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('36', '1', '20140321105122', '-1', '11', 'firstPics/1395370282095.JPG', '0', '20140321105122', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('79', '1', '20140321152647', '11', '11', 'firstPics/1395386806537.jpg', '0', '20140321152647', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('78', '1', '20140321152632', '11', '11', 'firstPics/1395386791791.jpg', '0', '20140321152632', '1', '', '250', '250', '1', '1', '0', null);
INSERT INTO `ad` VALUES ('77', '1', '20140321152620', '11', '6', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('76', '1', '20140321152620', '11', '5', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '2', '0', '2017-05-04 11:01:55');
INSERT INTO `ad` VALUES ('75', '1', '20140321152620', '11', '4', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '131', '0', '2017-05-04 11:42:53');
INSERT INTO `ad` VALUES ('74', '1', '20140321152620', '11', '11', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('73', '1', '20140321152420', '11', '5', 'firstPics/1395386660162.jpg', '0', '20140321152420', '1', '啦啦啦啦啦', '250', '250', '1', '2', '0', '2017-02-04 10:45:15');
INSERT INTO `ad` VALUES ('65', '1', '20140321144116', '11', '5', 'firstPics/1395384075617.jpg', '0', '20140321144116', '1', '..........', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('66', '5', '20140321152359', '11', '11', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '2', '0', null);
INSERT INTO `ad` VALUES ('67', '5', '20140321152359', '11', '4', 'firstPics/1395386638154.jpg', '3', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('68', '5', '20140321152359', '11', '5', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('69', '5', '20140321152359', '11', '12', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('70', '5', '20140321152359', '11', '14', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '5', '0', null);
INSERT INTO `ad` VALUES ('71', '1', '20140321152420', '11', '11', 'firstPics/1395386660162.jpg', '0', '20140321152420', '1', '啦啦啦啦啦', '250', '250', '1', '3', '0', null);
INSERT INTO `ad` VALUES ('5', '5', '20140321111453', '-1', '11', 'firstPics/1395371693130.jpg', '0', '20140321111453', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('58', '4', '20140321113800', '-1', '11', 'firstPics/1395373080313.jpg', '0', '20140321113800', '1', '', '250', '250', '1', '1', '0', null);
INSERT INTO `ad` VALUES ('64', '1', '20140321144116', '11', '4', 'firstPics/1395384075617.jpg', '0', '20140321144116', '1', '..........', '250', '250', '1', '0', '0', '2017-05-04 11:42:51');
INSERT INTO `ad` VALUES ('63', '1', '20140321144116', '11', '11', 'firstPics/1395384075617.jpg', '0', '20140321144116', '1', '..........', '250', '250', '1', '1', '0', '2017-05-04 11:04:52');
INSERT INTO `ad` VALUES ('62', '1', '20140321144017', '11', '5', 'firstPics/1395384016518.jpg', '0', '20140321144017', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('845', '9', '20170110213359', '-1', '16', 'firstPics/1484055239811.jpg', '0', '20170110213359', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('855', '10', '20170110214205', '-1', '15', 'firstPics/1484055724816.jpg', '0', '20170110214205', '1', '', '250', '250', '1', '2', '0', null);
INSERT INTO `ad` VALUES ('865', '10', '20170110214225', '-1', '15', 'firstPics/1484055745017.jpg', '1', '20170110214225', '1', '', '250', '250', '1', '3', '0', null);
INSERT INTO `ad` VALUES ('1185', '1', '20170322215510', '2', '11', 'firstPics/1490190910585.jpg', '0', '20170322215510', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1245', '1', '20170327151709', '2', '11', 'firstPics/1490599029703.jpg', '0', '20170327151709', '1', 'aaaaa', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1255', '1', '20170327155343', '-1', '11', 'firstPics/1490601222863.jpg', '0', '20170327155343', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1265', '1', '20170327155501', '2', '11', 'firstPics/1490601301854.jpg', '0', '20170327155501', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('835', '9', '20170110211437', '-1', '16', 'firstPics/1484054076988.jpg', '0', '20170110211437', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1285', '1', '20170327160505', '2', '11', 'firstPics/1490601905409.jpg', '0', '20170327160505', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1295', '1', '20170327161012', '2', '11', 'firstPics/1490602212818.jpg', '0', '20170327161012', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('825', '9', '20170110211236', '-1', '16', 'firstPics/1484053955060.jpg', '0', '20170110211236', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1105', '1', '20170322202141', '2', '11', 'firstPics/1490185301681.jpg', '0', '20170322202141', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('945', '12', '20170111192007', '2', '22', 'firstPics/1484133606937.jpg', '0', '20170111192007', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('955', '12', '20170111192055', '2', '22', 'firstPics/1484133655256.jpg', '0', '20170111192055', '1', '', '250', '250', '1', '3', '0', null);
INSERT INTO `ad` VALUES ('1225', '1', '20170327151303', '-1', '11', 'firstPics/1490598782948.jpg', '0', '20170327151303', '1', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('975', '9', '20170111212645', '11', '16', 'firstPics/1484141205470.jpg', '0', '20170111212645', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('985', '9', '20170111212826', '-1', '16', 'firstPics/1484141306451.jpg', '0', '20170111212826', '1', '', '250', '250', '1', '1', '0', null);
INSERT INTO `ad` VALUES ('995', '12', '20170301191403', '-1', '22', 'firstPics/1488366842909.jpg', '0', '20170301191403', '1', '啦啦啦', '250', '250', '1', '3', '0', null);
INSERT INTO `ad` VALUES ('1005', '9', '20170301204832', '-1', '16', 'firstPics/1488372512280.jpg', '0', '20170301204832', '1', '啦啦啦啦', '250', '250', '1', '2', '0', null);
INSERT INTO `ad` VALUES ('1015', '11', '20170315000549', '-1', '32', 'firstPics/1489507548977.jpg', '0', '20170315000549', '1', '小狗', '250', '250', '1', '4', '0', null);
INSERT INTO `ad` VALUES ('1025', '11', '20170315000619', '-1', '32', 'firstPics/1489507579555.jpg', '0', '20170315000619', '1', '寻找黑狗', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1035', '11', '20170315000647', '-1', '32', 'firstPics/1489507607950.jpg', '0', '20170315000647', '1', '寻找黄狗', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1045', '11', '20170315001442', '-1', '33', 'firstPics/1489508082153.jpg', '0', '20170315001442', '1', '白狗', '250', '250', '1', '1', '0', null);
INSERT INTO `ad` VALUES ('1055', '11', '20170315001459', '-1', '33', 'firstPics/1489508099149.jpg', '0', '20170315001459', '1', '卷毛狗', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1065', '11', '20170315142421', '-1', '34', 'firstPics/1489559060414.jpg', '0', '20170315142421', '1', '白猫', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1075', '11', '20170315142440', '-1', '34', 'firstPics/1489559080771.jpg', '0', '20170315142440', '1', '小猫', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1085', '11', '20170315142640', '-1', '32', 'firstPics/1489559200918.jpg', '0', '20170315142640', '1', '猫', '250', '250', '1', '1', '0', null);
INSERT INTO `ad` VALUES ('1095', '1', '20170322191719', '2', '11', 'firstPics/1490181438751.jpg', '0', '20170322191719', '1', '数字图像处理', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1195', '1', '20170327100026', '2', '11', 'firstPics/1490580026051.jpg', '0', '20170327100026', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1205', '1', '20170327102302', '2', '11', 'firstPics/1490581382055.jpg', '0', '20170327102302', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1135', '1', '20170322203625', '2', '12', 'firstPics/1490186185264.jpg', '0', '20170322203625', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1275', '1', '20170327160342', '-1', '11', 'firstPics/1490601822572.jpg', '0', '20170327160342', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('965', '1', '20170111212506', '11', '16', 'firstPics/1484141105902.jpg', '0', '20170111212506', '1', '', '250', '250', '1', '1', '0', null);
INSERT INTO `ad` VALUES ('815', '9', '20170110173837', '-1', '16', 'firstPics/1484041117580.jpg', '3', '20170110173837', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('875', '1', '20170111161237', '-1', '14', 'firstPics/1484122357632.jpg', '0', '20170111161237', '1', '山水', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('885', '2', '20170111161257', '-1', '14', 'firstPics/1484122377263.jpg', '0', '20170111161257', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('935', '10', '20170111190013', '-1', '15', 'firstPics/1484132413660.jpg', '0', '20170111190013', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1215', '1', '20170327104605', '2', '11', 'firstPics/1490582765400.jpg', '0', '20170327104605', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('785', '1', '20170110170737', '-1', '11', 'firstPics/1484039257169.jpg', '3', '20170110170737', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('895', '5', '20170111161316', '-1', '14', 'firstPics/1484122396246.jpg', '0', '20170111161316', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('905', '5', '20170111161317', '-1', '14', 'firstPics/1484122397571.jpg', '0', '20170111161317', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1155', '10', '20170322204525', '2', '4', 'firstPics/1490186725922.jpg', '0', '20170322204525', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1235', '1', '20170327151330', '-1', '11', 'firstPics/1490598810349.jpg', '0', '20170327151330', '1', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1305', '1', '20170425203341', '-1', '4', 'firstPics/1493123620855.jpg', '0', '20170425203341', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1315', '1', '20170425203404', '-1', '4', 'firstPics/1493123643949.jpg', '0', '20170425203404', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1325', '10', '20170425203418', '-1', '4', 'firstPics/1493123657757.jpg', '0', '20170425203418', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1335', '1', '20170425203428', '-1', '4', 'firstPics/1493123668253.jpg', '0', '20170425203428', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1345', '10', '20170425203437', '-1', '4', 'firstPics/1493123677572.jpg', '0', '20170425203437', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1355', '10', '20170425213611', '-1', '4', 'firstPics/1493127370591.png', '0', '20170425213611', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1365', '1', '20170425213620', '-1', '4', 'firstPics/1493127379979.jpg', '0', '20170425213620', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1375', '1', '20170425213628', '-1', '4', 'firstPics/1493127387927.png', '0', '20170425213628', '1', '', '250', '250', '1', '0', '0', null);
INSERT INTO `ad` VALUES ('1385', '1', '20170426193140', '-1', '1', 'firstPics/1493206299627.jpg', '0', '20170426193140', '1', '', '250', '250', '1', '0', '1', null);

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `administratorName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` int(4) NOT NULL,
  `scope` varchar(30) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `verification` varchar(20) DEFAULT NULL,
  `verificationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `emailIsActive` int(1) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', 'xjp', '1234', '0', '1|2|3|4|6|5', '15730055192@163.com', '115159', '2017-04-28 23:59:01', '1');
INSERT INTO `administrator` VALUES ('2', 'yuan1', '1233', '2', '2|3', null, null, '2017-04-04 22:52:44', null);
INSERT INTO `administrator` VALUES ('3', 'zjq', '123', '1', '2|3', null, null, null, null);
INSERT INTO `administrator` VALUES ('6', '123', '123', '1', '5', null, null, null, null);
INSERT INTO `administrator` VALUES ('5', 'xq', '1234', '1', '2|3|4', null, null, null, null);
INSERT INTO `administrator` VALUES ('7', '1234', '1234', '1', '5|6', null, null, null, null);

-- ----------------------------
-- Table structure for administratortype
-- ----------------------------
DROP TABLE IF EXISTS `administratortype`;
CREATE TABLE `administratortype` (
  `administratorTypeId` int(6) NOT NULL AUTO_INCREMENT,
  `level` int(6) NOT NULL,
  PRIMARY KEY (`administratorTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of administratortype
-- ----------------------------
INSERT INTO `administratortype` VALUES ('1', '0');
INSERT INTO `administratortype` VALUES ('2', '1');
INSERT INTO `administratortype` VALUES ('3', '2');
INSERT INTO `administratortype` VALUES ('4', '3');

-- ----------------------------
-- Table structure for adtype
-- ----------------------------
DROP TABLE IF EXISTS `adtype`;
CREATE TABLE `adtype` (
  `adTypeId` int(4) NOT NULL AUTO_INCREMENT,
  `adTypeName` varchar(20) DEFAULT NULL,
  `groupId` int(10) DEFAULT NULL,
  PRIMARY KEY (`adTypeId`),
  KEY `unitTypeId` (`groupId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adtype
-- ----------------------------
INSERT INTO `adtype` VALUES ('1', '教育培训', '1');
INSERT INTO `adtype` VALUES ('2', '房屋租赁', '1');
INSERT INTO `adtype` VALUES ('3', '求职招聘', '1');
INSERT INTO `adtype` VALUES ('4', '餐饮', '1');
INSERT INTO `adtype` VALUES ('5', '考研', '1');
INSERT INTO `adtype` VALUES ('6', '公共类', '1');
INSERT INTO `adtype` VALUES ('13', ' 寻物', '5');
INSERT INTO `adtype` VALUES ('8', '中考', '2');
INSERT INTO `adtype` VALUES ('9', '家教', '3');
INSERT INTO `adtype` VALUES ('10', '招聘', '4');
INSERT INTO `adtype` VALUES ('11', '旅游', '6');
INSERT INTO `adtype` VALUES ('12', ' 打折', '7');
INSERT INTO `adtype` VALUES ('14', ' 寻人', '5');
INSERT INTO `adtype` VALUES ('15', ' 教育', '5');
INSERT INTO `adtype` VALUES ('16', ' 打折', '5');

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `attentionId` int(4) NOT NULL AUTO_INCREMENT,
  `userId` int(4) DEFAULT NULL,
  `postId` int(4) DEFAULT NULL,
  PRIMARY KEY (`attentionId`),
  KEY `userId` (`userId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('125', '11', '11');
INSERT INTO `attention` VALUES ('116', '1', '2');
INSERT INTO `attention` VALUES ('117', '45', '11');
INSERT INTO `attention` VALUES ('118', '45', '4');
INSERT INTO `attention` VALUES ('119', '52', '11');
INSERT INTO `attention` VALUES ('124', '53', '11');
INSERT INTO `attention` VALUES ('127', '54', '4');
INSERT INTO `attention` VALUES ('128', '54', '14');
INSERT INTO `attention` VALUES ('129', '56', '11');
INSERT INTO `attention` VALUES ('130', '56', '4');
INSERT INTO `attention` VALUES ('131', '11', '21');
INSERT INTO `attention` VALUES ('132', '2', '4');
INSERT INTO `attention` VALUES ('133', '57', '11');
INSERT INTO `attention` VALUES ('135', '2', '5');
INSERT INTO `attention` VALUES ('137', '2', '14');
INSERT INTO `attention` VALUES ('138', '2', '11');
INSERT INTO `attention` VALUES ('139', '2', '16');

-- ----------------------------
-- Table structure for browsercontrol
-- ----------------------------
DROP TABLE IF EXISTS `browsercontrol`;
CREATE TABLE `browsercontrol` (
  `Row` int(4) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of browsercontrol
-- ----------------------------
INSERT INTO `browsercontrol` VALUES ('5', '1');

-- ----------------------------
-- Table structure for cost
-- ----------------------------
DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost` (
  `costId` int(10) NOT NULL AUTO_INCREMENT,
  `grade` int(10) DEFAULT NULL,
  `money` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`costId`),
  UNIQUE KEY `gradeIndex` (`grade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cost
-- ----------------------------
INSERT INTO `cost` VALUES ('1', '1', '50', '24');
INSERT INTO `cost` VALUES ('2', '2', '100', '10');
INSERT INTO `cost` VALUES ('3', '3', '200', '15');

-- ----------------------------
-- Table structure for pic
-- ----------------------------
DROP TABLE IF EXISTS `pic`;
CREATE TABLE `pic` (
  `picId` int(4) NOT NULL AUTO_INCREMENT,
  `picAddr` varchar(50) DEFAULT NULL,
  `width` int(4) DEFAULT NULL,
  `height` int(4) DEFAULT NULL,
  `checked` int(4) DEFAULT '0',
  `adId` int(4) DEFAULT NULL,
  PRIMARY KEY (`picId`),
  KEY `tb_pic_ibfk_1` (`adId`)
) ENGINE=MyISAM AUTO_INCREMENT=939 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pic
-- ----------------------------
INSERT INTO `pic` VALUES ('479', 'photoes/1395307875093.jpg', '1240', '1683', '1', '7');
INSERT INTO `pic` VALUES ('539', 'photoes/1395370188536.JPG', '640', '480', '1', '35');
INSERT INTO `pic` VALUES ('540', 'photoes/1395370282095.JPG', '640', '480', '1', '36');
INSERT INTO `pic` VALUES ('541', 'photoes/1395370383224.jpg', '726', '1024', '1', '37');
INSERT INTO `pic` VALUES ('542', 'photoes/1395370383224.jpg', '726', '1024', '1', '38');
INSERT INTO `pic` VALUES ('543', 'photoes/1395370383224.jpg', '726', '1024', '1', '39');
INSERT INTO `pic` VALUES ('544', 'photoes/1395370383224.jpg', '726', '1024', '1', '40');
INSERT INTO `pic` VALUES ('480', 'photoes/1395307934637.jpg', '1615', '1000', '1', '8');
INSERT INTO `pic` VALUES ('481', 'photoes/1395307943940.jpg', '1024', '678', '1', '9');
INSERT INTO `pic` VALUES ('482', 'photoes/1395307959774.jpg', '1024', '691', '1', '10');
INSERT INTO `pic` VALUES ('483', 'photoes/1395307960610.jpg', '849', '623', '1', '10');
INSERT INTO `pic` VALUES ('484', 'photoes/1395309019223.jpg', '2000', '1125', '1', '11');
INSERT INTO `pic` VALUES ('485', 'photoes/1395310271556.jpg', '2000', '1125', '1', '11');
INSERT INTO `pic` VALUES ('486', 'photoes/1395311522987.jpeg', '800', '800', '1', '12');
INSERT INTO `pic` VALUES ('487', 'photoes/1395311522987.jpeg', '800', '800', '1', '13');
INSERT INTO `pic` VALUES ('488', 'photoes/1395311522987.jpeg', '800', '800', '1', '14');
INSERT INTO `pic` VALUES ('489', 'photoes/1395311547960.jpg', '1240', '1683', '1', '15');
INSERT INTO `pic` VALUES ('490', 'photoes/1395311552158.jpg', '1024', '754', '1', '15');
INSERT INTO `pic` VALUES ('491', 'photoes/1395311547960.jpg', '1240', '1683', '1', '16');
INSERT INTO `pic` VALUES ('492', 'photoes/1395311553657.jpg', '0', '0', '1', '16');
INSERT INTO `pic` VALUES ('493', 'photoes/1395311550449.jpg', '1240', '1683', '1', '17');
INSERT INTO `pic` VALUES ('494', 'photoes/1395311554048.jpg', '1024', '754', '1', '17');
INSERT INTO `pic` VALUES ('495', 'photoes/1395311547960.jpg', '1240', '1683', '1', '18');
INSERT INTO `pic` VALUES ('496', 'photoes/1395311554993.jpg', '0', '0', '1', '18');
INSERT INTO `pic` VALUES ('497', 'photoes/1395311550449.jpg', '1240', '1683', '1', '19');
INSERT INTO `pic` VALUES ('498', 'photoes/1395311555427.jpg', '0', '0', '1', '19');
INSERT INTO `pic` VALUES ('499', 'photoes/1395311547960.jpg', '1240', '1683', '1', '20');
INSERT INTO `pic` VALUES ('500', 'photoes/1395311556042.jpg', '0', '0', '1', '20');
INSERT INTO `pic` VALUES ('501', 'photoes/1395311550449.jpg', '1240', '1683', '1', '21');
INSERT INTO `pic` VALUES ('502', 'photoes/1395311556380.jpg', '0', '0', '1', '21');
INSERT INTO `pic` VALUES ('503', 'photoes/1395311550449.jpg', '1240', '1683', '1', '22');
INSERT INTO `pic` VALUES ('504', 'photoes/1395311557643.jpg', '0', '0', '1', '22');
INSERT INTO `pic` VALUES ('505', 'photoes/1395311575802.jpg', '1000', '652', '1', '23');
INSERT INTO `pic` VALUES ('506', 'photoes/1395311575802.jpg', '1000', '652', '1', '24');
INSERT INTO `pic` VALUES ('507', 'photoes/1395311575802.jpg', '1000', '652', '1', '25');
INSERT INTO `pic` VALUES ('508', 'photoes/1395320028202.jpg', '1000', '652', '1', '26');
INSERT INTO `pic` VALUES ('509', 'photoes/1395320029195.jpg', '1240', '1683', '1', '26');
INSERT INTO `pic` VALUES ('510', 'photoes/1395320030905.jpg', '1024', '691', '1', '26');
INSERT INTO `pic` VALUES ('511', 'photoes/1395325744516.jpg', '1000', '735', '1', '27');
INSERT INTO `pic` VALUES ('512', 'photoes/1395325746649.jpg', '1024', '678', '1', '27');
INSERT INTO `pic` VALUES ('513', 'photoes/1395325746921.jpg', '1024', '659', '1', '27');
INSERT INTO `pic` VALUES ('514', 'photoes/1395325747024.jpg', '1024', '724', '1', '27');
INSERT INTO `pic` VALUES ('515', 'photoes/1395326836636.jpg', '920', '669', '1', '28');
INSERT INTO `pic` VALUES ('516', 'photoes/1395326837421.jpg', '1024', '754', '1', '28');
INSERT INTO `pic` VALUES ('517', 'photoes/1395326837548.jpg', '1024', '690', '1', '28');
INSERT INTO `pic` VALUES ('518', 'photoes/1395326836636.jpg', '920', '669', '1', '29');
INSERT INTO `pic` VALUES ('519', 'photoes/1395326837785.jpg', '0', '0', '1', '29');
INSERT INTO `pic` VALUES ('520', 'photoes/1395326837805.jpg', '0', '0', '1', '29');
INSERT INTO `pic` VALUES ('521', 'photoes/1395326836636.jpg', '920', '669', '1', '30');
INSERT INTO `pic` VALUES ('522', 'photoes/1395326837998.jpg', '0', '0', '1', '30');
INSERT INTO `pic` VALUES ('523', 'photoes/1395326838015.jpg', '0', '0', '1', '30');
INSERT INTO `pic` VALUES ('524', 'photoes/1395326896254.jpg', '1615', '1000', '1', '31');
INSERT INTO `pic` VALUES ('525', 'photoes/1395326897644.jpg', '1024', '678', '1', '31');
INSERT INTO `pic` VALUES ('526', 'photoes/1395326897727.jpg', '670', '473', '1', '31');
INSERT INTO `pic` VALUES ('527', 'photoes/1395326897780.jpg', '1024', '725', '1', '31');
INSERT INTO `pic` VALUES ('528', 'photoes/1395326896254.jpg', '1615', '1000', '1', '32');
INSERT INTO `pic` VALUES ('529', 'photoes/1395326898042.jpg', '0', '0', '1', '32');
INSERT INTO `pic` VALUES ('530', 'photoes/1395326898060.jpg', '0', '0', '1', '32');
INSERT INTO `pic` VALUES ('531', 'photoes/1395326898093.jpg', '0', '0', '1', '32');
INSERT INTO `pic` VALUES ('532', 'photoes/1395326896254.jpg', '1615', '1000', '1', '33');
INSERT INTO `pic` VALUES ('533', 'photoes/1395326898443.jpg', '0', '0', '1', '33');
INSERT INTO `pic` VALUES ('534', 'photoes/1395326898455.jpg', '0', '0', '1', '33');
INSERT INTO `pic` VALUES ('535', 'photoes/1395326898468.jpg', '0', '0', '1', '33');
INSERT INTO `pic` VALUES ('545', 'photoes/1395370383224.jpg', '726', '1024', '1', '41');
INSERT INTO `pic` VALUES ('546', 'photoes/1395370383224.jpg', '726', '1024', '1', '42');
INSERT INTO `pic` VALUES ('547', 'photoes/1395370383224.jpg', '726', '1024', '1', '43');
INSERT INTO `pic` VALUES ('548', 'photoes/1395370383224.jpg', '726', '1024', '1', '44');
INSERT INTO `pic` VALUES ('549', 'photoes/1395370383224.jpg', '726', '1024', '1', '45');
INSERT INTO `pic` VALUES ('550', 'photoes/1395370481624.jpg', '732', '1024', '1', '46');
INSERT INTO `pic` VALUES ('551', 'photoes/1395370482377.jpg', '1024', '719', '1', '46');
INSERT INTO `pic` VALUES ('552', 'photoes/1395370481624.jpg', '732', '1024', '1', '47');
INSERT INTO `pic` VALUES ('553', 'photoes/1395370482610.jpg', '0', '0', '1', '47');
INSERT INTO `pic` VALUES ('554', 'photoes/1395370481624.jpg', '732', '1024', '1', '48');
INSERT INTO `pic` VALUES ('555', 'photoes/1395370482895.jpg', '0', '0', '1', '48');
INSERT INTO `pic` VALUES ('556', 'photoes/1395370481624.jpg', '732', '1024', '1', '49');
INSERT INTO `pic` VALUES ('557', 'photoes/1395370483052.jpg', '0', '0', '1', '49');
INSERT INTO `pic` VALUES ('558', 'photoes/1395370481624.jpg', '732', '1024', '1', '50');
INSERT INTO `pic` VALUES ('559', 'photoes/1395370483202.jpg', '0', '0', '1', '50');
INSERT INTO `pic` VALUES ('560', 'photoes/1395370481624.jpg', '732', '1024', '1', '51');
INSERT INTO `pic` VALUES ('561', 'photoes/1395370483354.jpg', '0', '0', '1', '51');
INSERT INTO `pic` VALUES ('562', 'photoes/1395370481624.jpg', '732', '1024', '1', '52');
INSERT INTO `pic` VALUES ('563', 'photoes/1395370483519.jpg', '0', '0', '1', '52');
INSERT INTO `pic` VALUES ('564', 'photoes/1395370481624.jpg', '732', '1024', '1', '53');
INSERT INTO `pic` VALUES ('565', 'photoes/1395370483675.jpg', '0', '0', '1', '53');
INSERT INTO `pic` VALUES ('566', 'photoes/1395370481624.jpg', '732', '1024', '1', '54');
INSERT INTO `pic` VALUES ('567', 'photoes/1395370483961.jpg', '0', '0', '1', '54');
INSERT INTO `pic` VALUES ('568', 'photoes/1395370818398.jpg', '620', '896', '1', '55');
INSERT INTO `pic` VALUES ('569', 'photoes/1395370819431.jpg', '768', '1024', '1', '55');
INSERT INTO `pic` VALUES ('570', 'photoes/1395370818398.jpg', '620', '896', '1', '56');
INSERT INTO `pic` VALUES ('571', 'photoes/1395370819723.jpg', '0', '0', '1', '56');
INSERT INTO `pic` VALUES ('572', 'photoes/1395370818398.jpg', '620', '896', '1', '57');
INSERT INTO `pic` VALUES ('573', 'photoes/1395370819928.jpg', '0', '0', '1', '57');
INSERT INTO `pic` VALUES ('574', 'photoes/1395371693130.jpg', '754', '1024', '1', '5');
INSERT INTO `pic` VALUES ('575', 'photoes/1395371720291.jpg', '1024', '1024', '1', '5');
INSERT INTO `pic` VALUES ('576', 'photoes/1395371722022.jpg', '732', '1024', '1', '5');
INSERT INTO `pic` VALUES ('577', 'photoes/1395371722344.jpg', '373', '500', '1', '5');
INSERT INTO `pic` VALUES ('578', 'photoes/1395371861698.jpg', '1024', '707', '1', '5');
INSERT INTO `pic` VALUES ('579', 'photoes/1395371862369.jpg', '1000', '735', '1', '5');
INSERT INTO `pic` VALUES ('580', 'photoes/1395371862491.jpg', '1024', '747', '1', '5');
INSERT INTO `pic` VALUES ('581', 'photoes/1395371892754.jpg', '1000', '652', '1', '5');
INSERT INTO `pic` VALUES ('582', 'photoes/1395372924414.jpg', '1024', '625', '1', '5');
INSERT INTO `pic` VALUES ('583', 'photoes/1395372925868.jpg', '375', '1000', '1', '5');
INSERT INTO `pic` VALUES ('584', 'photoes/1395372925949.jpg', '650', '443', '1', '5');
INSERT INTO `pic` VALUES ('585', 'photoes/1395373080313.jpg', '1024', '625', '1', '58');
INSERT INTO `pic` VALUES ('586', 'photoes/1395373081075.jpg', '1024', '789', '1', '58');
INSERT INTO `pic` VALUES ('587', 'photoes/1395373081394.jpg', '1024', '625', '1', '58');
INSERT INTO `pic` VALUES ('832', 'photoes/1490582765400.jpg', '100', '100', '1', '1215');
INSERT INTO `pic` VALUES ('829', 'photoes/1490191283421.jpg', '1280', '935', '1', '1195');
INSERT INTO `pic` VALUES ('591', 'photoes/1395373138675.jpg', '373', '500', '1', '62');
INSERT INTO `pic` VALUES ('592', 'photoes/1395373138675.jpg', '373', '500', '1', '63');
INSERT INTO `pic` VALUES ('593', 'photoes/1395373138675.jpg', '373', '500', '1', '64');
INSERT INTO `pic` VALUES ('831', 'photoes/1490581382055.jpg', '100', '100', '1', '1205');
INSERT INTO `pic` VALUES ('828', 'photoes/1490190910585.jpg', '1280', '935', '1', '1185');
INSERT INTO `pic` VALUES ('597', 'photoes/1395373139209.jpg', '1701', '1228', '1', '62');
INSERT INTO `pic` VALUES ('598', 'photoes/1395373139209.jpg', '1701', '1228', '1', '63');
INSERT INTO `pic` VALUES ('599', 'photoes/1395373139209.jpg', '1701', '1228', '1', '64');
INSERT INTO `pic` VALUES ('830', 'photoes/1490580026051.jpg', '100', '100', '1', '1195');
INSERT INTO `pic` VALUES ('827', 'photoes/1490188891365.jpg', '533', '536', '1', '1175');
INSERT INTO `pic` VALUES ('604', 'photoes/1395384016518.jpg', '773', '580', '1', '62');
INSERT INTO `pic` VALUES ('826', 'photoes/1490188767948.jpg', '1920', '1080', '1', '1165');
INSERT INTO `pic` VALUES ('607', 'photoes/1395384017615.jpg', '1024', '659', '1', '62');
INSERT INTO `pic` VALUES ('825', 'photoes/1490186725922.jpg', '533', '536', '1', '1155');
INSERT INTO `pic` VALUES ('610', 'photoes/1395384017946.jpg', '1024', '747', '1', '62');
INSERT INTO `pic` VALUES ('611', 'photoes/1395384075617.jpg', '1024', '690', '1', '63');
INSERT INTO `pic` VALUES ('612', 'photoes/1395384075617.jpg', '1024', '690', '1', '64');
INSERT INTO `pic` VALUES ('613', 'photoes/1395384075617.jpg', '1024', '690', '1', '65');
INSERT INTO `pic` VALUES ('614', 'photoes/1395384076304.jpg', '1024', '691', '1', '63');
INSERT INTO `pic` VALUES ('615', 'photoes/1395384076304.jpg', '1024', '691', '1', '64');
INSERT INTO `pic` VALUES ('616', 'photoes/1395384076304.jpg', '1024', '691', '1', '65');
INSERT INTO `pic` VALUES ('617', 'photoes/1395384076601.jpg', '1000', '735', '1', '63');
INSERT INTO `pic` VALUES ('618', 'photoes/1395384076601.jpg', '1000', '735', '1', '64');
INSERT INTO `pic` VALUES ('619', 'photoes/1395384076601.jpg', '1000', '735', '1', '65');
INSERT INTO `pic` VALUES ('620', 'photoes/1395386638154.jpg', '1000', '735', '1', '66');
INSERT INTO `pic` VALUES ('621', 'photoes/1395386638154.jpg', '1000', '735', '1', '67');
INSERT INTO `pic` VALUES ('622', 'photoes/1395386638154.jpg', '1000', '735', '1', '68');
INSERT INTO `pic` VALUES ('623', 'photoes/1395386638154.jpg', '1000', '735', '1', '69');
INSERT INTO `pic` VALUES ('624', 'photoes/1395386638154.jpg', '1000', '735', '1', '70');
INSERT INTO `pic` VALUES ('625', 'photoes/1395386640107.jpg', '1024', '747', '1', '66');
INSERT INTO `pic` VALUES ('626', 'photoes/1395386640107.jpg', '1024', '747', '1', '67');
INSERT INTO `pic` VALUES ('627', 'photoes/1395386640107.jpg', '1024', '747', '1', '68');
INSERT INTO `pic` VALUES ('628', 'photoes/1395386640107.jpg', '1024', '747', '1', '69');
INSERT INTO `pic` VALUES ('629', 'photoes/1395386640107.jpg', '1024', '747', '1', '70');
INSERT INTO `pic` VALUES ('630', 'photoes/1395386660162.jpg', '1024', '691', '1', '71');
INSERT INTO `pic` VALUES ('632', 'photoes/1395386660162.jpg', '1024', '691', '1', '73');
INSERT INTO `pic` VALUES ('633', 'photoes/1395386779740.jpg', '1024', '707', '1', '74');
INSERT INTO `pic` VALUES ('634', 'photoes/1395386779740.jpg', '1024', '707', '1', '75');
INSERT INTO `pic` VALUES ('635', 'photoes/1395386779740.jpg', '1024', '707', '1', '76');
INSERT INTO `pic` VALUES ('636', 'photoes/1395386779740.jpg', '1024', '707', '1', '77');
INSERT INTO `pic` VALUES ('637', 'photoes/1395386791791.jpg', '773', '580', '1', '78');
INSERT INTO `pic` VALUES ('638', 'photoes/1395386806537.jpg', '1024', '728', '1', '79');
INSERT INTO `pic` VALUES ('639', 'photoes/1395400985601.jpg', '1024', '707', '1', '80');
INSERT INTO `pic` VALUES ('640', 'photoes/1395401052116.jpg', '751', '1200', '1', '81');
INSERT INTO `pic` VALUES ('641', 'photoes/1395401053189.jpg', '726', '1024', '1', '81');
INSERT INTO `pic` VALUES ('642', 'photoes/1395402609966.jpg', '751', '1200', '1', '82');
INSERT INTO `pic` VALUES ('643', 'photoes/1395402609966.jpg', '751', '1200', '1', '83');
INSERT INTO `pic` VALUES ('644', 'photoes/1395402609966.jpg', '751', '1200', '1', '84');
INSERT INTO `pic` VALUES ('645', 'photoes/1395402610966.jpg', '726', '1024', '1', '82');
INSERT INTO `pic` VALUES ('646', 'photoes/1395402610966.jpg', '726', '1024', '1', '83');
INSERT INTO `pic` VALUES ('647', 'photoes/1395402610966.jpg', '726', '1024', '1', '84');
INSERT INTO `pic` VALUES ('648', 'photoes/1395404540083.jpg', '1024', '695', '1', '85');
INSERT INTO `pic` VALUES ('833', 'photoes/1490598782948.jpg', '457', '302', '1', '1225');
INSERT INTO `pic` VALUES ('806', 'photoes/1484141105902.jpg', '1024', '768', '1', '965');
INSERT INTO `pic` VALUES ('834', 'photoes/1490598810349.jpg', '150', '150', '1', '1235');
INSERT INTO `pic` VALUES ('835', 'photoes/1490599029703.jpg', '457', '302', '1', '1245');
INSERT INTO `pic` VALUES ('836', 'photoes/1490601222863.jpg', '1024', '768', '1', '1255');
INSERT INTO `pic` VALUES ('824', 'photoes/1490186509341.jpg', '58', '36', '1', '1145');
INSERT INTO `pic` VALUES ('820', 'photoes/1490185301681.jpg', '100', '120', '1', '1105');
INSERT INTO `pic` VALUES ('821', 'photoes/1490185567052.jpg', '58', '36', '1', '1115');
INSERT INTO `pic` VALUES ('822', 'photoes/1490186147752.jpg', '58', '36', '1', '1125');
INSERT INTO `pic` VALUES ('823', 'photoes/1490186185264.jpg', '58', '36', '1', '1135');
INSERT INTO `pic` VALUES ('819', 'photoes/1490181438751.jpg', '512', '512', '1', '1095');
INSERT INTO `pic` VALUES ('816', 'photoes/1489559060414.jpg', '212', '300', '1', '1065');
INSERT INTO `pic` VALUES ('817', 'photoes/1489559080771.jpg', '211', '300', '1', '1075');
INSERT INTO `pic` VALUES ('818', 'photoes/1489559200918.jpg', '235', '300', '1', '1085');
INSERT INTO `pic` VALUES ('798', 'photoes/1484132413660.jpg', '1024', '768', '1', '935');
INSERT INTO `pic` VALUES ('799', 'photoes/1484132431271.jpg', '1024', '768', '1', '945');
INSERT INTO `pic` VALUES ('800', 'photoes/1484132876446.jpg', '1024', '768', '1', '945');
INSERT INTO `pic` VALUES ('801', 'photoes/1484133161648.jpg', '1024', '768', '1', '945');
INSERT INTO `pic` VALUES ('802', 'photoes/1484133606937.jpg', '1449', '1920', '1', '945');
INSERT INTO `pic` VALUES ('803', 'photoes/1484133607560.jpg', '1449', '1920', '1', '945');
INSERT INTO `pic` VALUES ('804', 'photoes/1484133655256.jpg', '1449', '1920', '1', '955');
INSERT INTO `pic` VALUES ('805', 'photoes/1484133655630.jpg', '1449', '1920', '1', '955');
INSERT INTO `pic` VALUES ('797', 'photoes/1484132070956.jpg', '1024', '768', '1', '925');
INSERT INTO `pic` VALUES ('796', 'photoes/1484131928828.jpg', '1024', '768', '1', '915');
INSERT INTO `pic` VALUES ('795', 'photoes/1484122397773.jpg', '1920', '1200', '1', '905');
INSERT INTO `pic` VALUES ('794', 'photoes/1484122397571.jpg', '1680', '1050', '1', '905');
INSERT INTO `pic` VALUES ('783', 'photoes/1484055239983.jpg', '1024', '768', '1', '845');
INSERT INTO `pic` VALUES ('784', 'photoes/1484055724816.jpg', '1680', '1050', '1', '855');
INSERT INTO `pic` VALUES ('785', 'photoes/1484055725114.jpg', '1920', '1200', '1', '855');
INSERT INTO `pic` VALUES ('786', 'photoes/1484055745017.jpg', '1680', '1050', '1', '865');
INSERT INTO `pic` VALUES ('787', 'photoes/1484055745290.jpg', '1680', '1050', '1', '865');
INSERT INTO `pic` VALUES ('788', 'photoes/1484122357632.jpg', '1280', '720', '1', '875');
INSERT INTO `pic` VALUES ('789', 'photoes/1484122358035.jpg', '1920', '1080', '1', '875');
INSERT INTO `pic` VALUES ('790', 'photoes/1484122377263.jpg', '1680', '1050', '1', '885');
INSERT INTO `pic` VALUES ('791', 'photoes/1484122377479.jpg', '1440', '900', '1', '885');
INSERT INTO `pic` VALUES ('792', 'photoes/1484122396246.jpg', '1680', '1050', '1', '895');
INSERT INTO `pic` VALUES ('793', 'photoes/1484122396503.jpg', '1920', '1200', '1', '895');
INSERT INTO `pic` VALUES ('782', 'photoes/1484055239811.jpg', '1024', '768', '1', '845');
INSERT INTO `pic` VALUES ('815', 'photoes/1489508099149.jpg', '435', '240', '1', '1055');
INSERT INTO `pic` VALUES ('814', 'photoes/1489508082153.jpg', '265', '240', '1', '1045');
INSERT INTO `pic` VALUES ('807', 'photoes/1484141205470.jpg', '1024', '768', '1', '975');
INSERT INTO `pic` VALUES ('808', 'photoes/1484141306451.jpg', '1024', '768', '1', '985');
INSERT INTO `pic` VALUES ('809', 'photoes/1488366842909.jpg', '1449', '1920', '1', '995');
INSERT INTO `pic` VALUES ('810', 'photoes/1488372512280.jpg', '1024', '768', '1', '1005');
INSERT INTO `pic` VALUES ('811', 'photoes/1489507548977.jpg', '172', '240', '1', '1015');
INSERT INTO `pic` VALUES ('812', 'photoes/1489507579555.jpg', '194', '240', '1', '1025');
INSERT INTO `pic` VALUES ('813', 'photoes/1489507607950.jpg', '384', '240', '1', '1035');
INSERT INTO `pic` VALUES ('773', 'photoes/1484035222664.jpg', '1024', '768', '1', '755');
INSERT INTO `pic` VALUES ('837', 'photoes/1490601301854.jpg', '512', '512', '1', '1265');
INSERT INTO `pic` VALUES ('771', 'photoes/1484034284020.jpg', '1024', '768', '1', '735');
INSERT INTO `pic` VALUES ('772', 'photoes/1484034439955.jpg', '1024', '768', '1', '745');
INSERT INTO `pic` VALUES ('838', 'photoes/1490601822572.jpg', '1024', '768', '1', '1275');
INSERT INTO `pic` VALUES ('839', 'photoes/1490601905409.jpg', '640', '360', '1', '1285');
INSERT INTO `pic` VALUES ('840', 'photoes/1490602212818.jpg', '640', '360', '1', '1295');
INSERT INTO `pic` VALUES ('774', 'photoes/1484035253535.jpg', '1024', '768', '1', '765');
INSERT INTO `pic` VALUES ('775', 'photoes/1484035262550.jpg', '1024', '768', '1', '775');
INSERT INTO `pic` VALUES ('776', 'photoes/1484039257169.jpg', '1024', '768', '1', '785');
INSERT INTO `pic` VALUES ('777', 'photoes/1484039492207.jpg', '1024', '768', '1', '795');
INSERT INTO `pic` VALUES ('778', 'photoes/1484040306461.jpg', '1024', '768', '1', '805');
INSERT INTO `pic` VALUES ('779', 'photoes/1484041117580.jpg', '1024', '768', '1', '815');
INSERT INTO `pic` VALUES ('780', 'photoes/1484053955060.jpg', '1024', '768', '1', '825');
INSERT INTO `pic` VALUES ('781', 'photoes/1484054076988.jpg', '1680', '1050', '1', '835');
INSERT INTO `pic` VALUES ('841', 'photoes/1493123620855.jpg', '360', '237', '1', '1305');
INSERT INTO `pic` VALUES ('842', 'photoes/1493123643949.jpg', '900', '632', '1', '1315');
INSERT INTO `pic` VALUES ('843', 'photoes/1493123657757.jpg', '386', '530', '1', '1325');
INSERT INTO `pic` VALUES ('844', 'photoes/1493123668253.jpg', '650', '406', '1', '1335');
INSERT INTO `pic` VALUES ('845', 'photoes/1493123677572.jpg', '1200', '848', '1', '1345');
INSERT INTO `pic` VALUES ('846', 'photoes/1493127370591.png', '646', '400', '1', '1355');
INSERT INTO `pic` VALUES ('847', 'photoes/1493127379979.jpg', '978', '547', '1', '1365');
INSERT INTO `pic` VALUES ('848', 'photoes/1493127387927.png', '248', '248', '1', '1375');
INSERT INTO `pic` VALUES ('849', 'photoes/1493206299627.jpg', '500', '392', '1', '1385');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postId` int(4) NOT NULL AUTO_INCREMENT,
  `postName` varchar(20) DEFAULT NULL,
  `unitId` int(4) DEFAULT NULL,
  `userId` int(4) DEFAULT NULL,
  `createTime` varchar(20) DEFAULT NULL,
  `visitorsOfToday` int(10) DEFAULT NULL,
  `allVisitors` int(10) DEFAULT NULL,
  `groupId` int(10) DEFAULT NULL,
  PRIMARY KEY (`postId`),
  KEY `unitId` (`unitId`),
  KEY `userId` (`userId`),
  KEY `pasteName` (`postName`),
  KEY `adType_groupId` (`groupId`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('12', '图书馆', '2', '-1', null, '19', '19', '1');
INSERT INTO `post` VALUES ('36', '三峡广场', '19', '0', '20170412153456', null, null, '5');
INSERT INTO `post` VALUES ('4', '明主湖', '1', '-1', null, '10567', '10567', '4');
INSERT INTO `post` VALUES ('5', '9舍', '1', '-1', null, '53', '53', '1');
INSERT INTO `post` VALUES ('6', '12教学楼', '1', '-1', null, '13', '13', '1');
INSERT INTO `post` VALUES ('8', '13舍', '1', '-1', null, '7', '7', '1');
INSERT INTO `post` VALUES ('1', '重庆大学总栏', '1', '-1', null, '26', '26', '1');
INSERT INTO `post` VALUES ('3', '三峡广场总栏', '3', '-1', null, '1', '1', '1');
INSERT INTO `post` VALUES ('2', '西南大学总栏', '2', '-1', null, '14', '14', '1');
INSERT INTO `post` VALUES ('14', '重庆八中总栏', '8', '-1', null, '136', '136', '1');
INSERT INTO `post` VALUES ('15', '重庆一中总栏', '9', '-1', null, '41', '41', '4');
INSERT INTO `post` VALUES ('16', '红花小学', '10', '-1', null, '52', '52', '3');
INSERT INTO `post` VALUES ('20', '12超市', '1', '-1', null, '5', '5', '1');
INSERT INTO `post` VALUES ('21', '重百专栏', '11', '11', null, '377', '377', '0');
INSERT INTO `post` VALUES ('22', '幸福小区', '12', '-1', '20131006135656', '33', '33', '7');
INSERT INTO `post` VALUES ('9', '一中', '1', '-1', null, '3', '3', '1');
INSERT INTO `post` VALUES ('28', '2中', '1', '-1', null, '4', '4', '1');
INSERT INTO `post` VALUES ('32', '寻物', '12', '-1', '20170314234159', null, null, '6');
INSERT INTO `post` VALUES ('33', '北京大道', '14', '0', '20170315001013', null, null, '6');
INSERT INTO `post` VALUES ('34', '寻猫', '12', '0', '20170315142237', null, null, '6');
INSERT INTO `post` VALUES ('35', '永辉超市', '19', '0', '20170412152711', null, null, '7');
INSERT INTO `post` VALUES ('37', '磁器口古镇', '19', '0', '20170412153606', null, null, '6');

-- ----------------------------
-- Table structure for privatead
-- ----------------------------
DROP TABLE IF EXISTS `privatead`;
CREATE TABLE `privatead` (
  `adId` int(4) NOT NULL AUTO_INCREMENT,
  `adTypeId` int(4) DEFAULT NULL,
  `upLoadTime` varchar(20) DEFAULT NULL,
  `userId` int(4) DEFAULT NULL,
  `postId` int(4) DEFAULT NULL,
  `firstPicAddr` varchar(200) DEFAULT NULL,
  `money` int(4) DEFAULT NULL,
  `sortValue` bigint(50) DEFAULT NULL,
  `remark` varchar(4) DEFAULT NULL,
  `height` int(4) DEFAULT NULL,
  `width` int(4) DEFAULT NULL,
  `exist` int(2) DEFAULT NULL,
  `click` int(10) DEFAULT NULL,
  `auditMrk` int(2) DEFAULT NULL,
  PRIMARY KEY (`adId`),
  KEY `userId` (`userId`),
  KEY `pasteId` (`postId`),
  KEY `typeId` (`adTypeId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privatead
-- ----------------------------
INSERT INTO `privatead` VALUES ('2', '78', '20140320182813', '11', '21', 'firstPics/1395311292722.jpg', '0', '20161107212002', '', '250', '250', '1', '1', '0');
INSERT INTO `privatead` VALUES ('1', '78', '20140320182804', '11', '21', 'firstPics/1395311283837.jpg', '0', '20161107212006', '', '250', '250', '1', '0', '0');
INSERT INTO `privatead` VALUES ('3', '78', '20140320182823', '11', '21', 'firstPics/1395311303113.jpg', '0', '20161107212005', '', '250', '250', '1', '0', '0');
INSERT INTO `privatead` VALUES ('4', '78', '20140320182837', '11', '21', 'firstPics/1395311317269.jpg', '0', '20161107212003', '', '250', '250', '1', '0', '0');
INSERT INTO `privatead` VALUES ('5', '78', '20140321114336', '11', '21', 'firstPics/1395373415149.jpeg', '0', '20161107212007', '', '250', '250', '1', '2', '0');
INSERT INTO `privatead` VALUES ('6', '29', '20140321114443', '11', '21', 'firstPics/1395373483270.jpg', '0', '20161107212004', '', '250', '250', '1', '0', '0');
INSERT INTO `privatead` VALUES ('7', '78', '20140321155408', '11', '21', 'firstPics/1395388448520.jpg', '0', '20161107212008', '啥', '250', '250', '1', '4', '0');
INSERT INTO `privatead` VALUES ('8', '78', '20140321155538', '11', '21', 'firstPics/1395388537442.jpeg', '0', '20161107212009', '女装', '250', '250', '1', '2', '0');

-- ----------------------------
-- Table structure for privateadtype
-- ----------------------------
DROP TABLE IF EXISTS `privateadtype`;
CREATE TABLE `privateadtype` (
  `typeId` int(4) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) NOT NULL,
  `postId` int(4) NOT NULL,
  PRIMARY KEY (`typeId`),
  KEY `pasteId` (`postId`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privateadtype
-- ----------------------------
INSERT INTO `privateadtype` VALUES ('78', '女装', '21');
INSERT INTO `privateadtype` VALUES ('82', '男装', '21');
INSERT INTO `privateadtype` VALUES ('29', '鞋子', '21');
INSERT INTO `privateadtype` VALUES ('47', '手表', '21');
INSERT INTO `privateadtype` VALUES ('80', '童装', '21');
INSERT INTO `privateadtype` VALUES ('90', 'ååå', '21');

-- ----------------------------
-- Table structure for privatepic
-- ----------------------------
DROP TABLE IF EXISTS `privatepic`;
CREATE TABLE `privatepic` (
  `picId` int(11) NOT NULL AUTO_INCREMENT,
  `picAddr` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `adId` int(11) DEFAULT NULL,
  PRIMARY KEY (`picId`),
  KEY `adId` (`adId`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privatepic
-- ----------------------------
INSERT INTO `privatepic` VALUES ('136', 'photoes/1395311303113.jpg', '768', '1024', '3');
INSERT INTO `privatepic` VALUES ('137', 'photoes/1395311317269.jpg', '1024', '814', '4');
INSERT INTO `privatepic` VALUES ('138', 'photoes/1395311318169.jpg', '683', '1024', '4');
INSERT INTO `privatepic` VALUES ('139', 'photoes/1395373415149.jpeg', '800', '800', '5');
INSERT INTO `privatepic` VALUES ('140', 'photoes/1395373416262.jpg', '683', '1024', '5');
INSERT INTO `privatepic` VALUES ('141', 'photoes/1395373483270.jpg', '1024', '680', '6');
INSERT INTO `privatepic` VALUES ('134', 'photoes/1395311283837.jpg', '740', '1110', '1');
INSERT INTO `privatepic` VALUES ('135', 'photoes/1395311292722.jpg', '749', '1024', '2');
INSERT INTO `privatepic` VALUES ('142', 'photoes/1395373483990.jpg', '1024', '683', '6');
INSERT INTO `privatepic` VALUES ('143', 'photoes/1395373484086.jpg', '1024', '683', '6');
INSERT INTO `privatepic` VALUES ('144', 'photoes/1395388397000.jpg', '1024', '728', '7');
INSERT INTO `privatepic` VALUES ('145', 'photoes/1395388448520.jpg', '1024', '719', '7');
INSERT INTO `privatepic` VALUES ('146', 'photoes/1395388537442.jpeg', '800', '800', '8');

-- ----------------------------
-- Table structure for typegroup
-- ----------------------------
DROP TABLE IF EXISTS `typegroup`;
CREATE TABLE `typegroup` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of typegroup
-- ----------------------------
INSERT INTO `typegroup` VALUES ('1', '类别一');
INSERT INTO `typegroup` VALUES ('2', '类别二');
INSERT INTO `typegroup` VALUES ('3', '类别三');
INSERT INTO `typegroup` VALUES ('4', '类别四');
INSERT INTO `typegroup` VALUES ('5', '类别五');
INSERT INTO `typegroup` VALUES ('6', '类别六');
INSERT INTO `typegroup` VALUES ('7', '类别七');

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `unitId` int(4) NOT NULL AUTO_INCREMENT,
  `unitName` varchar(20) DEFAULT NULL,
  `unitTypeId` int(4) DEFAULT NULL,
  PRIMARY KEY (`unitId`),
  KEY `unitId` (`unitId`) USING BTREE,
  KEY `unitTypeId` (`unitTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('1', '重庆大学', '1');
INSERT INTO `unit` VALUES ('2', '西南大学', '1');
INSERT INTO `unit` VALUES ('6', '重庆师范大学', '1');
INSERT INTO `unit` VALUES ('8', '重庆八中', '2');
INSERT INTO `unit` VALUES ('9', '重庆一中', '2');
INSERT INTO `unit` VALUES ('10', '红花小学', '3');
INSERT INTO `unit` VALUES ('11', '重百', '4');
INSERT INTO `unit` VALUES ('12', '幸福小区', '6');
INSERT INTO `unit` VALUES ('14', '城关小区', '6');
INSERT INTO `unit` VALUES ('15', '360', '5');
INSERT INTO `unit` VALUES ('18', '重邮', '1');
INSERT INTO `unit` VALUES ('19', '沙坪坝地区', '6');

-- ----------------------------
-- Table structure for unittype
-- ----------------------------
DROP TABLE IF EXISTS `unittype`;
CREATE TABLE `unittype` (
  `unitTypeId` int(4) NOT NULL AUTO_INCREMENT,
  `unitTypeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`unitTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unittype
-- ----------------------------
INSERT INTO `unittype` VALUES ('1', '大学');
INSERT INTO `unittype` VALUES ('2', '中学');
INSERT INTO `unittype` VALUES ('3', '小学');
INSERT INTO `unittype` VALUES ('4', '企业');
INSERT INTO `unittype` VALUES ('6', '地区');
INSERT INTO `unittype` VALUES ('5', '商业');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(4) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `userType` int(4) unsigned zerofill DEFAULT NULL,
  `verificationCode` varchar(20) DEFAULT NULL,
  `verificationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '1', '1234567', 'null', 'null', '0000', null, '2017-04-19 22:28:18');
INSERT INTO `user` VALUES ('10', '张晨', '1234567', '113540@qq.coln', '12324253653', '0001', null, '2017-04-29 16:25:17');
INSERT INTO `user` VALUES ('11', '重百专栏', '1234567', '1135404950@qq.com', 'null', '0002', '766150', '2017-04-19 22:42:28');
INSERT INTO `user` VALUES ('42', 'zz', '123456', '23@qq.com', '12332132451', '0000', null, null);
INSERT INTO `user` VALUES ('54', 'lm', 'limin1024', 'null', 'null', '0002', null, null);
INSERT INTO `user` VALUES ('41', 'zly', '1234567', '123@qq.com', null, '0000', null, null);
INSERT INTO `user` VALUES ('60', 'wo1', '123456', '1135404950@qq.com', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('47', 'nihao', 'ssssss', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('22', '1', '123456', '1234@qq.com', null, '0000', null, null);
INSERT INTO `user` VALUES ('53', '助理', '111@@@', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('52', 'a', '111111', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('51', 'nihao', 'oooooo', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('50', 'nihao', 'mmmmmm', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('59', 'wo', '123456', '1135404950@qq.com', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('43', 'zzz', 'qqqqqq', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('32', '123', '123456', '123@qq.com', null, '0000', null, null);
INSERT INTO `user` VALUES ('33', '你好', '123456', '123@qq.com', null, '0000', null, null);
INSERT INTO `user` VALUES ('34', 'q', '123456', '123@qq.com', null, '0000', null, null);
INSERT INTO `user` VALUES ('35', '助理', '123456', '123@qq.com', null, '0000', null, null);
INSERT INTO `user` VALUES ('36', 'aa', '123456', '123@qq.com', null, '0000', null, null);
INSERT INTO `user` VALUES ('45', 'zly', 'aaaaaa', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('46', 'nihao', 'nihaoma', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('44', 'zly', '123333', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('55', '321', '123456', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('56', '重百', '123456', 'null', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('57', 'yuan', '123456', '1135404950@qq.com', 'null', '0000', null, null);
INSERT INTO `user` VALUES ('61', '1234', '123456', null, null, '0000', null, null);

-- ----------------------------
-- Table structure for usertype
-- ----------------------------
DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype` (
  `userTypeId` int(11) NOT NULL DEFAULT '0',
  `userTypeName` varchar(20) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `specialAds` int(11) DEFAULT NULL,
  PRIMARY KEY (`userTypeId`),
  KEY `userTypeId` (`userTypeId`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of usertype
-- ----------------------------
INSERT INTO `usertype` VALUES ('0', 'common', '0', '5');
INSERT INTO `usertype` VALUES ('1', 'important', '50', '20');
INSERT INTO `usertype` VALUES ('2', 'vip', '100', '30');
INSERT INTO `usertype` VALUES ('-1', 'visitor', '0', '0');

-- ----------------------------
-- Table structure for visitorlog
-- ----------------------------
DROP TABLE IF EXISTS `visitorlog`;
CREATE TABLE `visitorlog` (
  `visitorIP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `visitorPostName` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `visitorID` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(10) unsigned zerofill DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `adID` int(10) DEFAULT NULL,
  PRIMARY KEY (`visitorID`),
  KEY `visitorId` (`visitorID`)
) ENGINE=InnoDB AUTO_INCREMENT=1383 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of visitorlog
-- ----------------------------
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '粘贴栏测试', '1354', '0000000038', '2017-04-28 23:54:35', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '粘贴栏测试', '1356', '0000000038', '2017-04-28 23:56:15', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '1357', '0000000004', '2017-05-04 10:36:41', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '1358', '0000000004', '2017-05-04 10:36:56', '75');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '1360', '0000000004', '2017-05-04 10:37:05', '83');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆大学总栏', '1362', '0000000001', '2017-05-04 10:45:02', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '西南大学总栏', '1363', '0000000002', '2017-05-04 10:45:06', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '9舍', '1364', '0000000005', '2017-05-04 10:45:10', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '9舍', '1365', '0000000005', '2017-05-04 10:45:15', '73');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '9舍', '1366', '0000000005', '2017-05-04 11:01:22', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '9舍', '1367', '0000000005', '2017-05-04 11:01:55', '76');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆八中总栏', '1368', '0000000014', '2017-05-04 11:36:08', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '红花小学', '1369', '0000000016', '2017-05-04 11:36:15', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '12超市', '1370', '0000000020', '2017-05-04 11:36:23', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '2中', '1371', '0000000028', '2017-05-04 11:36:26', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '一中', '1372', '0000000009', '2017-05-04 11:36:28', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '12教学楼', '1373', '0000000006', '2017-05-04 11:36:30', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '西南大学总栏', '1374', '0000000002', '2017-05-04 11:36:33', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '图书馆', '1375', '0000000012', '2017-05-04 11:36:36', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '9舍', '1376', '0000000005', '2017-05-04 11:36:39', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '1377', '0000000004', '2017-05-04 11:36:43', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '1379', '0000000004', '2017-05-04 11:39:22', '64');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '1380', '0000000004', '2017-05-04 11:41:42', '83');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '1382', '0000000004', '2017-05-04 11:46:32', '59');
