/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : post

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2016-12-10 16:35:56
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
  PRIMARY KEY (`adId`),
  KEY `tb_advertise_ibfk_1` (`adTypeId`),
  KEY `tb_advertise_ibfk_3` (`postId`),
  KEY `tb_advertise_ibfk_4` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=506 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('7', '1', '20140320173118', '-1', '14', 'firstPics/1395307875093.jpg', '0', '20140320173118', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('8', '1', '20140320173215', '-1', '14', 'firstPics/1395307934637.jpg', '0', '20140320173215', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('9', '1', '20140320173224', '-1', '14', 'firstPics/1395307943940.jpg', '0', '20140320173224', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('10', '1', '20140320173240', '-1', '14', 'firstPics/1395307959774.jpg', '0', '20140320173240', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('11', '3', '20140320181112', '54', '16', 'firstPics/1395310271556.jpg', '0', '20140320181112', '1', '', '250', '250', '1', '6');
INSERT INTO `ad` VALUES ('26', '1', '20140320205348', '56', '20', 'firstPics/1395320028202.jpg', '0', '20140320205348', '1', 'asdfghjkl', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('27', '1', '20140320222906', '55', '11', 'firstPics/1395325744516.jpg', '0', '20140320222906', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('80', '1', '20140321192307', '-1', '11', 'firstPics/1395400985601.jpg', '0', '20140321192307', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('81', '3', '20140321192412', '-1', '11', 'firstPics/1395401052116.jpg', '0', '20140321192412', '0', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('82', '1', '20140321195010', '11', '11', 'firstPics/1395402609966.jpg', '0', '20140321195010', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('83', '1', '20140321195010', '11', '4', 'firstPics/1395402609966.jpg', '0', '20140321195010', '1', '', '250', '250', '1', '2');
INSERT INTO `ad` VALUES ('84', '1', '20140321195010', '11', '5', 'firstPics/1395402609966.jpg', '0', '20140321195010', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('85', '1', '20140321202221', '-1', '11', 'firstPics/1395404540083.jpg', '0', '20140321202221', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('34', '2', '20140321104924', '-1', '4', 'firstPics/1395370163051.JPG', '0', '20140321104924', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('35', '2', '20140321104948', '-1', '11', 'firstPics/1395370188536.JPG', '0', '20140321104948', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('36', '1', '20140321105122', '-1', '11', 'firstPics/1395370282095.JPG', '0', '20140321105122', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('79', '1', '20140321152647', '11', '11', 'firstPics/1395386806537.jpg', '0', '20140321152647', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('78', '1', '20140321152632', '11', '11', 'firstPics/1395386791791.jpg', '0', '20140321152632', '1', '', '250', '250', '1', '1');
INSERT INTO `ad` VALUES ('77', '1', '20140321152620', '11', '6', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('76', '1', '20140321152620', '11', '5', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('75', '1', '20140321152620', '11', '4', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '1');
INSERT INTO `ad` VALUES ('74', '1', '20140321152620', '11', '11', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('73', '1', '20140321152420', '11', '5', 'firstPics/1395386660162.jpg', '0', '20140321152420', '1', '啦啦啦啦啦', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('72', '1', '20140321152420', '11', '4', 'firstPics/1395386660162.jpg', '0', '20140321152420', '1', '啦啦啦啦啦', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('65', '1', '20140321144116', '11', '5', 'firstPics/1395384075617.jpg', '0', '20140321144116', '1', '..........', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('66', '5', '20140321152359', '11', '11', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '1');
INSERT INTO `ad` VALUES ('67', '5', '20140321152359', '11', '4', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('68', '5', '20140321152359', '11', '5', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('69', '5', '20140321152359', '11', '12', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('70', '5', '20140321152359', '11', '14', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('71', '1', '20140321152420', '11', '11', 'firstPics/1395386660162.jpg', '0', '20140321152420', '1', '啦啦啦啦啦', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('5', '5', '20140321111453', '-1', '11', 'firstPics/1395371693130.jpg', '0', '20140321111453', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('58', '4', '20140321113800', '-1', '11', 'firstPics/1395373080313.jpg', '0', '20140321113800', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('64', '1', '20140321144116', '11', '4', 'firstPics/1395384075617.jpg', '0', '20140321144116', '1', '..........', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('63', '1', '20140321144116', '11', '11', 'firstPics/1395384075617.jpg', '0', '20140321144116', '1', '..........', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('62', '1', '20140321144017', '11', '5', 'firstPics/1395384016518.jpg', '0', '20140321144017', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('95', '1', '20161101192503', '59', '11', 'firstPics/1477999502606.jpg', '0', '20161101192503', '1', 'aaaa', '250', '250', '0', '2');
INSERT INTO `ad` VALUES ('59', '1', '20140321134621', '-1', '4', 'firstPics/1395380780145.jpg', '0', '20140321134621', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('215', '1', '20161115155741', '-1', '11', 'firstPics/1479196660030.jpg', '0', '20161115155741', '1', '', '250', '250', '0', '3');
INSERT INTO `ad` VALUES ('115', '1', '20161101213218', '57', '11', 'firstPics/1478007138883.jpg', '0', '20161101213218', '1', 'aaa', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('125', '1', '20161102193132', '57', '11', 'firstPics/1478086292046.jpg', '0', '20161102193132', '1', 'aaaa', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('145', '1', '20161102214604', '-1', '4', 'firstPics/1478094364189.jpg', '0', '20161102214604', '1', 'dsda', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('155', '1', '20161102214838', '-1', '11', 'firstPics/1478094518182.jpg', '0', '20161102214838', '1', '', '250', '250', '0', '1');
INSERT INTO `ad` VALUES ('165', '1', '20161102215219', '-1', '11', 'firstPics/1478094739598.JPG', '0', '20161102215219', '1', '', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('185', '1', '20161106152037', '-1', '11', 'firstPics/1478416836317.jpg', '0', '20161106152037', '1', '', '50', '50', '0', '2');
INSERT INTO `ad` VALUES ('195', '1', '20161106160200', '-1', '4', 'firstPics/1478419318955.jpg', '0', '20161106160200', '1', '', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('415', '1', '20161130193410', '2', '11', 'firstPics/1480505650528.jpg', '0', '20161130193410', '1', '', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('205', '1', '20161115151106', '-1', '11', 'firstPics/1479193865734.jpg', '0', '20161115151106', '1', '', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('425', '1', '20161130193419', '2', '11', 'firstPics/1480505658946.jpg', '0', '20161130193419', '1', '', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('405', '1', '20161130193403', '2', '11', 'firstPics/1480505643865.jpg', '0', '20161130193403', '1', '', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('235', '1', '20161115155919', '-1', '11', 'firstPics/1479196759191.jpg', '0', '20161115155919', '1', '', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('245', '1', '20161115160633', '-1', '11', 'firstPics/1479197193181.jpg', '0', '20161115160633', '1', '中国', '250', '250', '0', '2');
INSERT INTO `ad` VALUES ('255', '1', '20161115161417', '2', '11', 'firstPics/1479197657127.jpg', '0', '20161115161417', '1', '八仙花', '250', '250', '0', '3');
INSERT INTO `ad` VALUES ('395', '1', '20161130193354', '2', '11', 'firstPics/1480505634701.jpg', '0', '20161130193354', '1', '', '250', '250', '0', '1');
INSERT INTO `ad` VALUES ('385', '1', '20161130193345', '2', '11', 'firstPics/1480505624425.jpg', '0', '20161130193345', '1', 'aedasfasfadsf', '250', '250', '0', '0');
INSERT INTO `ad` VALUES ('505', '3', '20161205113907', '-1', '14', 'firstPics/1480909147501.jpg', '0', '20161205113907', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('495', '2', '20161205113857', '-1', '14', 'firstPics/1480909137607.png', '0', '20161205113857', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('365', '12', '20161128213925', '-1', '22', 'firstPics/1480340364276.jpg', '0', '20161128213925', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('375', '12', '20161128222332', '-1', '22', 'firstPics/1480343012081.jpg', '0', '20161128222332', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('435', '1', '20161130193433', '2', '11', 'firstPics/1480505673556.jpg', '0', '20161130193433', '1', 'fsdgsdfgdfhdffghgf', '250', '250', '0', '2');
INSERT INTO `ad` VALUES ('455', '1', '20161130193500', '2', '11', 'firstPics/1480505700214.jpg', '0', '20161130193500', '1', 'sarfasfgsdsdsdsdsdsdsdsdsdsd', '250', '250', '0', '2');
INSERT INTO `ad` VALUES ('465', '1', '20161130193518', '2', '11', 'firstPics/1480505718014.jpg', '0', '20161130193518', '1', 'rewefasdf', '250', '250', '0', '2');
INSERT INTO `ad` VALUES ('485', '1', '20161205113840', '-1', '14', 'firstPics/1480909120307.jpg', '0', '20161205113840', '1', '', '250', '250', '1', '0');
INSERT INTO `ad` VALUES ('475', '10', '20161205113820', '-1', '15', 'firstPics/1480909100199.jpg', '0', '20161205113820', '1', '', '250', '250', '1', '0');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', 'xjp', '123', '0', '0');
INSERT INTO `administrator` VALUES ('2', 'yuan', '123', '1', '2');
INSERT INTO `administrator` VALUES ('3', 'zjq', '123', '1', '2|3');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adtype
-- ----------------------------
INSERT INTO `adtype` VALUES ('1', '教育培训', '1');
INSERT INTO `adtype` VALUES ('2', '房屋租赁', '1');
INSERT INTO `adtype` VALUES ('3', '求职招聘', '1');
INSERT INTO `adtype` VALUES ('4', '餐饮', '1');
INSERT INTO `adtype` VALUES ('5', '考研', '1');
INSERT INTO `adtype` VALUES ('6', '公共类', '1');
INSERT INTO `adtype` VALUES ('8', '中考', '2');
INSERT INTO `adtype` VALUES ('9', '家教', '3');
INSERT INTO `adtype` VALUES ('10', '招聘', '4');
INSERT INTO `adtype` VALUES ('11', '活动', '6');
INSERT INTO `adtype` VALUES ('12', ' 打折', '7');

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
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

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
INSERT INTO `attention` VALUES ('134', '2', '11');

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
) ENGINE=MyISAM AUTO_INCREMENT=743 DEFAULT CHARSET=utf8;

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
INSERT INTO `pic` VALUES ('536', 'photoes/1395370163051.JPG', '640', '480', '1', '34');
INSERT INTO `pic` VALUES ('537', 'photoes/1395370164808.JPG', '640', '480', '1', '34');
INSERT INTO `pic` VALUES ('538', 'photoes/1395370164876.JPG', '640', '480', '1', '34');
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
INSERT INTO `pic` VALUES ('588', 'photoes/1395373138675.jpg', '373', '500', '1', '59');
INSERT INTO `pic` VALUES ('661', 'photoes/1478086292046.jpg', '1024', '647', '1', '125');
INSERT INTO `pic` VALUES ('656', 'photoes/1477999504119.jpg', '709', '1030', '1', '95');
INSERT INTO `pic` VALUES ('591', 'photoes/1395373138675.jpg', '373', '500', '1', '62');
INSERT INTO `pic` VALUES ('592', 'photoes/1395373138675.jpg', '373', '500', '1', '63');
INSERT INTO `pic` VALUES ('593', 'photoes/1395373138675.jpg', '373', '500', '1', '64');
INSERT INTO `pic` VALUES ('594', 'photoes/1395373139209.jpg', '1701', '1228', '1', '59');
INSERT INTO `pic` VALUES ('660', 'photoes/1478007139003.jpg', '358', '272', '1', '115');
INSERT INTO `pic` VALUES ('655', 'photoes/1477999504109.jpg', '358', '272', '1', '95');
INSERT INTO `pic` VALUES ('597', 'photoes/1395373139209.jpg', '1701', '1228', '1', '62');
INSERT INTO `pic` VALUES ('598', 'photoes/1395373139209.jpg', '1701', '1228', '1', '63');
INSERT INTO `pic` VALUES ('599', 'photoes/1395373139209.jpg', '1701', '1228', '1', '64');
INSERT INTO `pic` VALUES ('600', 'photoes/1395380780145.jpg', '1024', '768', '1', '59');
INSERT INTO `pic` VALUES ('601', 'photoes/1395380781389.jpg', '1024', '768', '1', '59');
INSERT INTO `pic` VALUES ('659', 'photoes/1478007138883.jpg', '1024', '647', '1', '115');
INSERT INTO `pic` VALUES ('654', 'photoes/1477999502606.jpg', '1024', '647', '1', '95');
INSERT INTO `pic` VALUES ('604', 'photoes/1395384016518.jpg', '773', '580', '1', '62');
INSERT INTO `pic` VALUES ('679', 'photoes/1479194570659.jpg', '260', '383', '1', '205');
INSERT INTO `pic` VALUES ('607', 'photoes/1395384017615.jpg', '1024', '659', '1', '62');
INSERT INTO `pic` VALUES ('678', 'photoes/1479194326429.jpg', '3888', '5152', '1', '205');
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
INSERT INTO `pic` VALUES ('631', 'photoes/1395386660162.jpg', '1024', '691', '1', '72');
INSERT INTO `pic` VALUES ('632', 'photoes/1395386660162.jpg', '1024', '691', '1', '73');
INSERT INTO `pic` VALUES ('633', 'photoes/1395386779740.jpg', '1024', '707', '1', '74');
INSERT INTO `pic` VALUES ('634', 'photoes/1395386779740.jpg', '1024', '707', '1', '75');
INSERT INTO `pic` VALUES ('635', 'photoes/1395386779740.jpg', '1024', '707', '1', '76');
INSERT INTO `pic` VALUES ('636', 'photoes/1395386779740.jpg', '1024', '707', '1', '77');
INSERT INTO `pic` VALUES ('637', 'photoes/1395386791791.jpg', '773', '580', '1', '78');
INSERT INTO `pic` VALUES ('638', 'photoes/1395386806537.jpg', '1024', '728', '1', '79');
INSERT INTO `pic` VALUES ('639', 'photoes/1395400985601.jpg', '1024', '707', '1', '80');
INSERT INTO `pic` VALUES ('640', 'photoes/1395401052116.jpg', '751', '1200', '0', '81');
INSERT INTO `pic` VALUES ('641', 'photoes/1395401053189.jpg', '726', '1024', '0', '81');
INSERT INTO `pic` VALUES ('642', 'photoes/1395402609966.jpg', '751', '1200', '1', '82');
INSERT INTO `pic` VALUES ('643', 'photoes/1395402609966.jpg', '751', '1200', '1', '83');
INSERT INTO `pic` VALUES ('644', 'photoes/1395402609966.jpg', '751', '1200', '1', '84');
INSERT INTO `pic` VALUES ('645', 'photoes/1395402610966.jpg', '726', '1024', '1', '82');
INSERT INTO `pic` VALUES ('646', 'photoes/1395402610966.jpg', '726', '1024', '1', '83');
INSERT INTO `pic` VALUES ('647', 'photoes/1395402610966.jpg', '726', '1024', '1', '84');
INSERT INTO `pic` VALUES ('648', 'photoes/1395404540083.jpg', '1024', '695', '1', '85');
INSERT INTO `pic` VALUES ('662', 'photoes/1478086292410.jpg', '358', '272', '1', '125');
INSERT INTO `pic` VALUES ('734', 'photoes/1480505718014.jpg', '1280', '960', '1', '465');
INSERT INTO `pic` VALUES ('733', 'photoes/1480505700214.jpg', '1024', '768', '1', '455');
INSERT INTO `pic` VALUES ('665', 'photoes/1478094364189.jpg', '1024', '768', '1', '145');
INSERT INTO `pic` VALUES ('666', 'photoes/1478094518182.jpg', '1024', '768', '1', '155');
INSERT INTO `pic` VALUES ('667', 'photoes/1478094739598.JPG', '347', '475', '1', '165');
INSERT INTO `pic` VALUES ('677', 'photoes/1479194326358.jpg', '260', '383', '1', '205');
INSERT INTO `pic` VALUES ('676', 'photoes/1479193866529.jpg', '358', '272', '1', '205');
INSERT INTO `pic` VALUES ('675', 'photoes/1479193865734.jpg', '1024', '647', '1', '205');
INSERT INTO `pic` VALUES ('671', 'photoes/1478416836317.jpg', '1280', '960', '1', '185');
INSERT INTO `pic` VALUES ('672', 'photoes/1478416837179.jpg', '709', '1030', '1', '185');
INSERT INTO `pic` VALUES ('673', 'photoes/1478419318955.jpg', '3888', '5152', '1', '195');
INSERT INTO `pic` VALUES ('674', 'photoes/1478419321198.jpg', '3888', '5152', '1', '195');
INSERT INTO `pic` VALUES ('680', 'photoes/1479194570956.jpg', '3888', '5152', '1', '205');
INSERT INTO `pic` VALUES ('691', 'photoes/1479196660030.jpg', '3888', '5152', '1', '215');
INSERT INTO `pic` VALUES ('692', 'photoes/1479196662366.jpg', '3888', '5152', '1', '215');
INSERT INTO `pic` VALUES ('731', 'photoes/1480505673556.jpg', '1024', '768', '1', '435');
INSERT INTO `pic` VALUES ('695', 'photoes/1479196759191.jpg', '895', '436', '1', '235');
INSERT INTO `pic` VALUES ('696', 'photoes/1479197193181.jpg', '1024', '768', '1', '245');
INSERT INTO `pic` VALUES ('697', 'photoes/1479197657127.jpg', '1024', '768', '1', '255');
INSERT INTO `pic` VALUES ('723', 'photoes/1480340364276.jpg', '1024', '768', '1', '365');
INSERT INTO `pic` VALUES ('730', 'photoes/1480505658946.jpg', '1024', '768', '1', '425');
INSERT INTO `pic` VALUES ('729', 'photoes/1480505650528.jpg', '1024', '768', '1', '415');
INSERT INTO `pic` VALUES ('728', 'photoes/1480505643865.jpg', '1024', '768', '1', '405');
INSERT INTO `pic` VALUES ('727', 'photoes/1480505634701.jpg', '1024', '768', '1', '395');
INSERT INTO `pic` VALUES ('726', 'photoes/1480505624425.jpg', '1024', '768', '1', '385');
INSERT INTO `pic` VALUES ('725', 'photoes/1480343012081.jpg', '1024', '768', '1', '375');
INSERT INTO `pic` VALUES ('742', 'photoes/1480909147501.jpg', '356', '220', '1', '505');
INSERT INTO `pic` VALUES ('741', 'photoes/1480909137607.png', '1492', '1398', '1', '495');
INSERT INTO `pic` VALUES ('740', 'photoes/1480909120307.jpg', '709', '1030', '1', '485');
INSERT INTO `pic` VALUES ('739', 'photoes/1480909100199.jpg', '240', '240', '1', '475');

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
  `visitorsOfToday` int(10) NOT NULL,
  `allVisitors` int(10) NOT NULL,
  `groupId` int(10) DEFAULT NULL,
  PRIMARY KEY (`postId`),
  KEY `unitId` (`unitId`),
  KEY `userId` (`userId`),
  KEY `pasteName` (`postName`),
  KEY `adType_groupId` (`groupId`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('11', '12啊', '1', '-1', null, '788', '788', '1');
INSERT INTO `post` VALUES ('12', '图书馆', '2', '-1', null, '14', '14', '1');
INSERT INTO `post` VALUES ('13', '三峡广场', '3', '-1', null, '1', '0', '1');
INSERT INTO `post` VALUES ('4', '明主湖', '1', '-1', null, '86', '86', '4');
INSERT INTO `post` VALUES ('5', '9舍', '1', '-1', null, '14', '14', '1');
INSERT INTO `post` VALUES ('6', '12教学楼', '1', '-1', null, '9', '9', '1');
INSERT INTO `post` VALUES ('8', '13舍', '1', '-1', null, '5', '5', '1');
INSERT INTO `post` VALUES ('1', '重庆大学总栏', '1', '-1', null, '10', '10', '1');
INSERT INTO `post` VALUES ('3', '三峡广场总栏', '3', '-1', null, '1', '1', '1');
INSERT INTO `post` VALUES ('2', '西南大学总栏', '2', '-1', null, '8', '8', '1');
INSERT INTO `post` VALUES ('14', '重庆八中总栏', '8', '-1', null, '36', '36', '1');
INSERT INTO `post` VALUES ('15', '重庆一中总栏', '9', '-1', null, '21', '21', '4');
INSERT INTO `post` VALUES ('16', '红花小学', '10', '-1', null, '33', '33', '3');
INSERT INTO `post` VALUES ('17', '12图书馆', '7', '-1', null, '1', '1', '1');
INSERT INTO `post` VALUES ('18', '12食堂', '7', '-1', null, '2', '2', '1');
INSERT INTO `post` VALUES ('19', '重庆12', '7', '-1', null, '1', '1', '1');
INSERT INTO `post` VALUES ('20', '12超市', '1', '-1', null, '4', '4', '1');
INSERT INTO `post` VALUES ('21', '重百专栏', '11', '11', null, '349', '349', '0');
INSERT INTO `post` VALUES ('22', '幸福小区', '12', '-1', '20131006135656', '13', '13', '7');
INSERT INTO `post` VALUES ('24', 'zhulingyun', '1', '12', '20131006160658', '15', '15', '1');
INSERT INTO `post` VALUES ('25', '1111', '1', '13', '20131020185231', '4', '4', '1');
INSERT INTO `post` VALUES ('9', '一中', '1', '-1', null, '1', '1', '1');
INSERT INTO `post` VALUES ('28', '2中', '1', '-1', null, '2', '2', '1');
INSERT INTO `post` VALUES ('29', '3', '1', '7', null, '0', '0', '1');
INSERT INTO `post` VALUES ('30', '4', '1', '1', null, '0', '0', '1');
INSERT INTO `post` VALUES ('31', '4354', '1', '65', null, '4', '4', '1');

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
  PRIMARY KEY (`adId`),
  KEY `userId` (`userId`),
  KEY `pasteId` (`postId`),
  KEY `typeId` (`adTypeId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privatead
-- ----------------------------
INSERT INTO `privatead` VALUES ('2', '78', '20140320182813', '11', '21', 'firstPics/1395311292722.jpg', '0', '20161107212002', '', '250', '250', '1', '1');
INSERT INTO `privatead` VALUES ('1', '78', '20140320182804', '11', '21', 'firstPics/1395311283837.jpg', '0', '20161107212006', '', '250', '250', '1', '0');
INSERT INTO `privatead` VALUES ('3', '78', '20140320182823', '11', '21', 'firstPics/1395311303113.jpg', '0', '20161107212005', '', '250', '250', '1', '0');
INSERT INTO `privatead` VALUES ('4', '78', '20140320182837', '11', '21', 'firstPics/1395311317269.jpg', '0', '20161107212003', '', '250', '250', '1', '0');
INSERT INTO `privatead` VALUES ('5', '78', '20140321114336', '11', '21', 'firstPics/1395373415149.jpeg', '0', '20161107212007', '', '250', '250', '1', '0');
INSERT INTO `privatead` VALUES ('6', '29', '20140321114443', '11', '21', 'firstPics/1395373483270.jpg', '0', '20161107212004', '', '250', '250', '1', '0');
INSERT INTO `privatead` VALUES ('7', '78', '20140321155408', '11', '21', 'firstPics/1395388448520.jpg', '0', '20161107212008', '啥', '250', '250', '1', '2');
INSERT INTO `privatead` VALUES ('8', '78', '20140321155538', '11', '21', 'firstPics/1395388537442.jpeg', '0', '20161107212009', '女装', '250', '250', '1', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privateadtype
-- ----------------------------
INSERT INTO `privateadtype` VALUES ('78', '女装', '21');
INSERT INTO `privateadtype` VALUES ('82', '男装', '21');
INSERT INTO `privateadtype` VALUES ('29', '鞋子', '21');
INSERT INTO `privateadtype` VALUES ('47', '手表', '21');
INSERT INTO `privateadtype` VALUES ('80', '童装', '21');

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
INSERT INTO `unit` VALUES ('7', '12大学', '1');
INSERT INTO `unit` VALUES ('8', '重庆八中', '2');
INSERT INTO `unit` VALUES ('9', '重庆一中', '2');
INSERT INTO `unit` VALUES ('10', '红花小学', '3');
INSERT INTO `unit` VALUES ('11', '重百', '4');
INSERT INTO `unit` VALUES ('12', '幸福小区', '6');
INSERT INTO `unit` VALUES ('14', '城关小区', '6');
INSERT INTO `unit` VALUES ('15', '360', '5');
INSERT INTO `unit` VALUES ('18', '重邮', '1');

-- ----------------------------
-- Table structure for unittype
-- ----------------------------
DROP TABLE IF EXISTS `unittype`;
CREATE TABLE `unittype` (
  `unitTypeId` int(4) NOT NULL AUTO_INCREMENT,
  `unitTypeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`unitTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unittype
-- ----------------------------
INSERT INTO `unittype` VALUES ('1', '大学');
INSERT INTO `unittype` VALUES ('2', '中学');
INSERT INTO `unittype` VALUES ('3', '小学');
INSERT INTO `unittype` VALUES ('4', '企业');
INSERT INTO `unittype` VALUES ('6', '地区');
INSERT INTO `unittype` VALUES ('5', '商业');
INSERT INTO `unittype` VALUES ('7', ' aaa');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(4) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `userType` int(4) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '1', '123', '295739817@qq.com', '18883876918', '0000');
INSERT INTO `user` VALUES ('10', '张晨', '123', '295739817@qq.com', '12324253653', '0001');
INSERT INTO `user` VALUES ('11', '重百专栏', '111111', 'null', 'null', '0002');
INSERT INTO `user` VALUES ('42', 'zz', '123456', '23@qq.com', '12332132451', '0000');
INSERT INTO `user` VALUES ('54', 'lm', 'limin1024', 'null', 'null', '0002');
INSERT INTO `user` VALUES ('41', 'zly', '1234567', '123@qq.com', null, '0000');
INSERT INTO `user` VALUES ('60', 'wo1', '123456', '1135404950@qq.com', 'null', '0000');
INSERT INTO `user` VALUES ('47', 'nihao', 'ssssss', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('22', '1', '123456', '1234@qq.com', null, '0000');
INSERT INTO `user` VALUES ('53', '助理', '111@@@', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('52', 'a', '111111', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('51', 'nihao', 'oooooo', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('50', 'nihao', 'mmmmmm', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('59', 'wo', '123456', '1135404950@qq.com', 'null', '0000');
INSERT INTO `user` VALUES ('43', 'zzz', 'qqqqqq', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('32', '123', '123456', '123@qq.com', null, '0000');
INSERT INTO `user` VALUES ('33', '你好', '123456', '123@qq.com', null, '0000');
INSERT INTO `user` VALUES ('34', 'q', '123456', '123@qq.com', null, '0000');
INSERT INTO `user` VALUES ('35', '助理', '123456', '123@qq.com', null, '0000');
INSERT INTO `user` VALUES ('36', 'aa', '123456', '123@qq.com', null, '0000');
INSERT INTO `user` VALUES ('45', 'zly', 'aaaaaa', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('46', 'nihao', 'nihaoma', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('44', 'zly', '123333', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('55', '321', '123456', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('56', '重百', '123456', 'null', 'null', '0000');
INSERT INTO `user` VALUES ('57', 'yuan', '123456', '1135404950@qq.com', 'null', '0000');

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
  PRIMARY KEY (`visitorID`),
  KEY `visitorId` (`visitorID`)
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of visitorlog
-- ----------------------------
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '1', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '2', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '3', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '4', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '5', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '6', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '图书馆', '7', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '8', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '9', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '10', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12教学楼', '11', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '13舍', '12', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆大学总栏', '13', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12超市', '14', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', 'zhulingyun', '15', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '1111', '16', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '一中', '17', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '4354', '18', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '19', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '20', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '21', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '22', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '23', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '24', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '25', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '26', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '27', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '28', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '29', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '30', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '31', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '32', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '33', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '34', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '35', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '36', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '37', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '38', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '39', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '40', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '41', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '42', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '43', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '44', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '45', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '46', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '47', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '48', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '49', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '50', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '51', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆大学总栏', '52', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆大学总栏', '53', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.223.196', '12舍', '54', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.223.196', '12舍', '55', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '56', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '57', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '58', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '59', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '60', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '61', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '62', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '63', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '明主湖', '64', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '明主湖', '65', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '明主湖', '66', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '明主湖', '67', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '明主湖', '68', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '明主湖', '69', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.23.245', '重庆八中总栏', '70', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.23.245', '重庆八中总栏', '71', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.23.245', '重庆八中总栏', '72', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.23.245', '重庆八中总栏', '73', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.23.245', '12教学楼', '74', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.23.245', '西南大学总栏', '75', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.23.245', '12舍', '76', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '77', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.23.245', '12舍', '78', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '79', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '80', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '81', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '82', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '83', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '84', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '85', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '86', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '12舍', '87', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '西南大学总栏', '88', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '西南大学总栏', '89', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '西南大学总栏', '90', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '西南大学总栏', '91', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '西南大学总栏', '92', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.23.245', 'zhulingyun', '93', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '94', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '95', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '96', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '97', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '98', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '99', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '100', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '幸福小区', '101', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '幸福小区', '102', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '幸福小区', '103', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '幸福小区', '104', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '幸福小区', '105', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '幸福小区', '106', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '幸福小区', '107', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '幸福小区', '108', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '109', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '110', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '111', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '112', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '113', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '114', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '115', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.22.160', '重百专栏', '116', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '117', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '118', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '119', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '120', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '121', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '122', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '123', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '124', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '125', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '126', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '127', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '128', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '129', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '130', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '131', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '132', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '133', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '134', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '135', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '136', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '137', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '138', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '139', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '140', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '141', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '142', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '143', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '144', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '145', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '146', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '147', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '148', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '149', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '150', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '151', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '152', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '153', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '154', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '155', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '156', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '157', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '158', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '159', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '160', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '161', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '162', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '163', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '164', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '165', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '166', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '167', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '168', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '169', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '170', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '171', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '172', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '173', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '174', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '175', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '176', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '177', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '178', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '179', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '180', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '181', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '182', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '183', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '184', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '185', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '186', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '187', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '4354', '188', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '4354', '189', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '190', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '191', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '192', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '193', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '194', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '195', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '196', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '197', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '198', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '199', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '200', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '201', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '202', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '203', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '204', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '205', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '206', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '207', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '208', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '209', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '210', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '211', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '212', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '213', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '214', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '215', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '216', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '217', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '218', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '219', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '220', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '221', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '222', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '223', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '224', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '225', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '226', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '227', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '228', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '229', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '230', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '231', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '232', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '233', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '234', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '235', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '236', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '237', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '238', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '239', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '240', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '241', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '242', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '243', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '244', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '245', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '246', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '247', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '248', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '249', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '250', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '251', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '252', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '253', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '254', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '255', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '256', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '257', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '258', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '259', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '260', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '261', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '262', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '263', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '264', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '265', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '266', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '267', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '12舍', '268', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '9舍', '269', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.249.207', '重百专栏', '270', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '271', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '272', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '273', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '2中', '274', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '275', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '276', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '277', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '278', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '279', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '280', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '281', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '282', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '283', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '284', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '285', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '286', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '287', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '288', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '289', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '290', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '291', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '292', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '293', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '294', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '295', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '296', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '297', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '298', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '299', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '300', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '301', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '302', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '303', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '304', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '305', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '306', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '307', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '308', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '309', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '310', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '311', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '312', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '313', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '314', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '315', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '316', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '317', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '318', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '319', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '320', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '321', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '322', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '323', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '324', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '325', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '326', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '327', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '328', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '329', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '4354', '330', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '331', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '332', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '333', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '334', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '335', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '336', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '337', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '338', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '339', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '340', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '341', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '342', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '343', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '344', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '345', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '346', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '347', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '348', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '349', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '350', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '351', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '352', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '353', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '354', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '355', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '356', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '357', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '358', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '359', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '360', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '361', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '362', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '363', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '364', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '365', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '366', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '367', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '368', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '369', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '370', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '371', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '372', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '373', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '374', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '375', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '376', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '377', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '378', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '379', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '380', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '381', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '382', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '383', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '384', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '385', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '386', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '387', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '388', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '389', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '390', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '391', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '392', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '393', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '394', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '395', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '396', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '图书馆', '397', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '图书馆', '398', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '图书馆', '399', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '图书馆', '400', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '图书馆', '401', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '图书馆', '402', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '图书馆', '403', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '404', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '405', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '406', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '407', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '408', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '409', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '410', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '411', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '412', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '413', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '414', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '415', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '416', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '417', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '418', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '419', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '420', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '421', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '422', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '423', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '424', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '425', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '426', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '427', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '428', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '429', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '430', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '431', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '432', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '433', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '434', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '435', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '436', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '437', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '438', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '439', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '440', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '441', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '442', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '443', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '444', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '445', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '446', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '447', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '448', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '449', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '450', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '451', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.138.57', '12舍', '452', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.138.57', '重庆八中总栏', '453', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.138.57', '红花小学', '454', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.138.57', '12舍', '455', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.138.57', '红花小学', '456', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.138.57', '红花小学', '457', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.138.57', '红花小学', '458', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '459', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '460', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12舍', '461', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '462', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '463', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '464', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '465', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '466', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '467', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '468', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '469', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '470', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '471', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '472', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '473', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '474', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12教学楼', '475', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '13舍', '476', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆大学总栏', '477', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '478', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12啊', '479', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12啊', '480', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12教学楼', '481', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12啊', '482', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '重百专栏', '483', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '重百专栏', '484', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12啊', '485', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '幸福小区', '486', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '12啊', '487', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12啊', '488', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12啊', '489', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '13舍', '490', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '13舍', '491', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '明主湖', '492', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '明主湖', '493', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '明主湖', '494', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '明主湖', '495', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '明主湖', '496', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '明主湖', '497', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '明主湖', '498', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '9舍', '499', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '明主湖', '500', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '12啊', '501', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '12啊', '502', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12啊', '503', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '12啊', '504', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.210.107', '12啊', '505', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12啊', '506', null, null);
INSERT INTO `visitorlog` VALUES ('172.22.218.55', '12啊', '507', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '510', null, null);
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '511', '0000000004', null);
INSERT INTO `visitorlog` VALUES ('172.20.53.231', '重庆八中总栏', '512', '0000000014', null);
INSERT INTO `visitorlog` VALUES ('202.202.5.171', '重庆八中总栏', '513', '0000000014', '2016-12-09 17:20:51');
