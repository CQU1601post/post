/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : post

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2017-04-22 14:35:32
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
  PRIMARY KEY (`adId`),
  KEY `tb_advertise_ibfk_1` (`adTypeId`),
  KEY `tb_advertise_ibfk_3` (`postId`),
  KEY `tb_advertise_ibfk_4` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=1706 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('7', '1', '20140320173118', '-1', '14', 'firstPics/1395307875093.jpg', '0', '20140320173118', '1', '', '250', '250', '1', '7', '0');
INSERT INTO `ad` VALUES ('8', '1', '20140320173215', '-1', '14', 'firstPics/1395307934637.jpg', '0', '20140320173215', '1', '', '250', '250', '1', '3', '0');
INSERT INTO `ad` VALUES ('9', '1', '20140320173224', '-1', '14', 'firstPics/1395307943940.jpg', '0', '20140320173224', '1', '', '250', '250', '1', '4', '0');
INSERT INTO `ad` VALUES ('10', '1', '20140320173240', '-1', '14', 'firstPics/1395307959774.jpg', '0', '20140320173240', '1', '', '250', '250', '1', '6', '0');
INSERT INTO `ad` VALUES ('11', '3', '20140320181112', '54', '16', 'firstPics/1395310271556.jpg', '0', '20140320181112', '1', '', '250', '250', '1', '7', '0');
INSERT INTO `ad` VALUES ('26', '1', '20140320205348', '56', '20', 'firstPics/1395320028202.jpg', '0', '20140320205348', '1', 'asdfghjkl', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('27', '1', '20140320222906', '55', '11', 'firstPics/1395325744516.jpg', '0', '20140320222906', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('80', '1', '20140321192307', '-1', '11', 'firstPics/1395400985601.jpg', '0', '20140321192307', '1', '', '250', '250', '1', '14', '0');
INSERT INTO `ad` VALUES ('81', '3', '20140321192412', '-1', '11', 'firstPics/1395401052116.jpg', '0', '20140321192412', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('82', '1', '20140321195010', '11', '11', 'firstPics/1395402609966.jpg', '0', '20140321195010', '1', '', '250', '250', '1', '32', '0');
INSERT INTO `ad` VALUES ('83', '1', '20140321195010', '11', '4', 'firstPics/1395402609966.jpg', '0', '20140321195010', '1', '', '250', '250', '1', '7', '0');
INSERT INTO `ad` VALUES ('84', '1', '20140321195010', '11', '5', 'firstPics/1395402609966.jpg', '0', '20140321195010', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('85', '1', '20140321202221', '-1', '11', 'firstPics/1395404540083.jpg', '0', '20140321202221', '1', '', '250', '250', '1', '5', '0');
INSERT INTO `ad` VALUES ('34', '2', '20140321104924', '-1', '4', 'firstPics/1395370163051.JPG', '1', '20140321104924', '1', '', '250', '250', '1', '125', '0');
INSERT INTO `ad` VALUES ('35', '2', '20140321104948', '-1', '11', 'firstPics/1395370188536.JPG', '0', '20140321104948', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('36', '1', '20140321105122', '-1', '11', 'firstPics/1395370282095.JPG', '0', '20140321105122', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('79', '1', '20140321152647', '11', '11', 'firstPics/1395386806537.jpg', '0', '20140321152647', '1', '', '250', '250', '1', '1', '0');
INSERT INTO `ad` VALUES ('78', '1', '20140321152632', '11', '11', 'firstPics/1395386791791.jpg', '0', '20140321152632', '1', '', '250', '250', '1', '1', '0');
INSERT INTO `ad` VALUES ('77', '1', '20140321152620', '11', '6', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('76', '1', '20140321152620', '11', '5', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '1', '0');
INSERT INTO `ad` VALUES ('75', '1', '20140321152620', '11', '4', 'firstPics/1395386779740.jpg', '2', '20140321152620', '1', '', '250', '250', '1', '6432', '0');
INSERT INTO `ad` VALUES ('74', '1', '20140321152620', '11', '11', 'firstPics/1395386779740.jpg', '0', '20140321152620', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('73', '1', '20140321152420', '11', '5', 'firstPics/1395386660162.jpg', '0', '20140321152420', '1', '啦啦啦啦啦', '250', '250', '1', '1', '0');
INSERT INTO `ad` VALUES ('72', '1', '20140321152420', '11', '4', 'firstPics/1395386660162.jpg', '3', '20140321152420', '1', '啦啦啦啦啦', '250', '250', '1', '2', '0');
INSERT INTO `ad` VALUES ('65', '1', '20140321144116', '11', '5', 'firstPics/1395384075617.jpg', '0', '20140321144116', '1', '..........', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('66', '5', '20140321152359', '11', '11', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '2', '0');
INSERT INTO `ad` VALUES ('67', '5', '20140321152359', '11', '4', 'firstPics/1395386638154.jpg', '3', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '3941', '0');
INSERT INTO `ad` VALUES ('68', '5', '20140321152359', '11', '5', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('69', '5', '20140321152359', '11', '12', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('70', '5', '20140321152359', '11', '14', 'firstPics/1395386638154.jpg', '0', '20140321152359', '1', '重百重百重百重百重百', '250', '250', '1', '7', '0');
INSERT INTO `ad` VALUES ('71', '1', '20140321152420', '11', '11', 'firstPics/1395386660162.jpg', '0', '20140321152420', '1', '啦啦啦啦啦', '250', '250', '1', '3', '0');
INSERT INTO `ad` VALUES ('5', '5', '20140321111453', '-1', '11', 'firstPics/1395371693130.jpg', '0', '20140321111453', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('58', '4', '20140321113800', '-1', '11', 'firstPics/1395373080313.jpg', '0', '20140321113800', '1', '', '250', '250', '1', '1', '0');
INSERT INTO `ad` VALUES ('64', '1', '20140321144116', '11', '4', 'firstPics/1395384075617.jpg', '1', '20140321144116', '1', '..........', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('63', '1', '20140321144116', '11', '11', 'firstPics/1395384075617.jpg', '0', '20140321144116', '1', '..........', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('62', '1', '20140321144017', '11', '5', 'firstPics/1395384016518.jpg', '0', '20140321144017', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('845', '9', '20170110213359', '-1', '16', 'firstPics/1484055239811.jpg', '0', '20170110213359', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('59', '1', '20140321134621', '-1', '4', 'firstPics/1395380780145.jpg', '2', '20140321134621', '1', '', '250', '250', '1', '4047', '0');
INSERT INTO `ad` VALUES ('855', '10', '20170110214205', '-1', '15', 'firstPics/1484055724816.jpg', '0', '20170110214205', '1', '', '250', '250', '1', '2', '0');
INSERT INTO `ad` VALUES ('1185', '1', '20170322215510', '2', '11', 'firstPics/1490190910585.jpg', '0', '20170322215510', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1245', '1', '20170327151709', '2', '11', 'firstPics/1490599029703.jpg', '0', '20170327151709', '0', 'aaaaa', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1255', '1', '20170327155343', '-1', '11', 'firstPics/1490601222863.jpg', '0', '20170327155343', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1265', '1', '20170327155501', '2', '11', 'firstPics/1490601301854.jpg', '0', '20170327155501', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('835', '9', '20170110211437', '-1', '16', 'firstPics/1484054076988.jpg', '0', '20170110211437', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1285', '1', '20170327160505', '2', '11', 'firstPics/1490601905409.jpg', '0', '20170327160505', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1295', '1', '20170327161012', '2', '11', 'firstPics/1490602212818.jpg', '0', '20170327161012', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1305', '1', '20170327171034', '-1', '11', 'firstPics/1490605834619.jpg', '0', '20170327171034', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1315', '1', '20170327171100', '-1', '11', 'firstPics/1490605860884.jpg', '0', '20170327171100', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1325', '1', '20170327171125', '-1', '11', 'firstPics/1490605885246.jpg', '0', '20170327171125', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1335', '1', '20170327171200', '-1', '11', 'firstPics/1490605920398.jpg', '0', '20170327171200', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1345', '1', '20170327171431', '2', '11', 'firstPics/1490606071247.jpg', '0', '20170327171431', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1355', '11', '20170412163008', '-1', '37', 'firstPics/1491985808268.jpg', '0', '20170412163008', '1', '美丽夜景', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1365', '11', '20170412163050', '-1', '37', 'firstPics/1491985849996.jpg', '0', '20170412163050', '1', '特色小吃', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('825', '9', '20170110211236', '-1', '16', 'firstPics/1484053955060.jpg', '0', '20170110211236', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1105', '1', '20170322202141', '2', '11', 'firstPics/1490185301681.jpg', '0', '20170322202141', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('945', '12', '20170111192007', '2', '22', 'firstPics/1484133606937.jpg', '0', '20170111192007', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('955', '12', '20170111192055', '2', '22', 'firstPics/1484133655256.jpg', '0', '20170111192055', '1', '', '250', '250', '1', '3', '0');
INSERT INTO `ad` VALUES ('1225', '1', '20170327151303', '-1', '11', 'firstPics/1490598782948.jpg', '0', '20170327151303', '0', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('975', '9', '20170111212645', '11', '16', 'firstPics/1484141205470.jpg', '0', '20170111212645', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('985', '9', '20170111212826', '-1', '16', 'firstPics/1484141306451.jpg', '0', '20170111212826', '1', '', '250', '250', '1', '1', '0');
INSERT INTO `ad` VALUES ('995', '12', '20170301191403', '-1', '22', 'firstPics/1488366842909.jpg', '0', '20170301191403', '1', '啦啦啦', '250', '250', '1', '3', '0');
INSERT INTO `ad` VALUES ('1005', '9', '20170301204832', '-1', '16', 'firstPics/1488372512280.jpg', '0', '20170301204832', '1', '啦啦啦啦', '250', '250', '1', '2', '0');
INSERT INTO `ad` VALUES ('1015', '11', '20170315000549', '-1', '32', 'firstPics/1489507548977.jpg', '0', '20170315000549', '1', '小狗', '250', '250', '1', '8', '0');
INSERT INTO `ad` VALUES ('1025', '11', '20170315000619', '-1', '32', 'firstPics/1489507579555.jpg', '0', '20170315000619', '1', '寻找黑狗', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1035', '11', '20170315000647', '-1', '32', 'firstPics/1489507607950.jpg', '0', '20170315000647', '1', '寻找黄狗', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1045', '11', '20170315001442', '-1', '33', 'firstPics/1489508082153.jpg', '0', '20170315001442', '1', '白狗', '250', '250', '1', '1', '0');
INSERT INTO `ad` VALUES ('1055', '11', '20170315001459', '-1', '33', 'firstPics/1489508099149.jpg', '0', '20170315001459', '1', '卷毛狗', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1065', '11', '20170315142421', '-1', '34', 'firstPics/1489559060414.jpg', '0', '20170315142421', '1', '白猫', '250', '250', '1', '4886', '0');
INSERT INTO `ad` VALUES ('1075', '11', '20170315142440', '-1', '34', 'firstPics/1489559080771.jpg', '0', '20170315142440', '1', '小猫', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1085', '11', '20170315142640', '-1', '32', 'firstPics/1489559200918.jpg', '0', '20170315142640', '1', '猫', '250', '250', '1', '793', '0');
INSERT INTO `ad` VALUES ('1095', '1', '20170322191719', '2', '11', 'firstPics/1490181438751.jpg', '0', '20170322191719', '0', '数字图像处理', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1195', '1', '20170327100026', '2', '11', 'firstPics/1490580026051.jpg', '0', '20170327100026', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1205', '1', '20170327102302', '2', '11', 'firstPics/1490581382055.jpg', '0', '20170327102302', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1135', '1', '20170322203625', '2', '12', 'firstPics/1490186185264.jpg', '0', '20170322203625', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1375', '11', '20170412163147', '-1', '37', 'firstPics/1491985907373.jpg', '0', '20170412163147', '1', '美丽全景', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1275', '1', '20170327160342', '-1', '11', 'firstPics/1490601822572.jpg', '0', '20170327160342', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('965', '1', '20170111212506', '11', '16', 'firstPics/1484141105902.jpg', '0', '20170111212506', '1', '', '250', '250', '1', '1', '0');
INSERT INTO `ad` VALUES ('875', '1', '20170111161237', '-1', '14', 'firstPics/1484122357632.jpg', '0', '20170111161237', '1', '山水', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('885', '2', '20170111161257', '-1', '14', 'firstPics/1484122377263.jpg', '0', '20170111161257', '1', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('935', '10', '20170111190013', '-1', '15', 'firstPics/1484132413660.jpg', '0', '20170111190013', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1215', '1', '20170327104605', '2', '11', 'firstPics/1490582765400.jpg', '0', '20170327104605', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('785', '1', '20170110170737', '-1', '11', 'firstPics/1484039257169.jpg', '3', '20170110170737', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('895', '5', '20170111161316', '-1', '14', 'firstPics/1484122396246.jpg', '0', '20170111161316', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('905', '5', '20170111161317', '-1', '14', 'firstPics/1484122397571.jpg', '0', '20170111161317', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1155', '10', '20170322204525', '2', '4', 'firstPics/1490186725922.jpg', '0', '20170322204525', '0', '', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1235', '1', '20170327151330', '-1', '11', 'firstPics/1490598810349.jpg', '0', '20170327151330', '0', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1385', '11', '20170412163214', '-1', '37', 'firstPics/1491985934708.jpg', '0', '20170412163214', '1', '磁器口入口', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1395', '11', '20170412163307', '-1', '37', 'firstPics/1491985987374.jpg', '0', '20170412163307', '1', '山间小道', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1405', '11', '20170412163411', '-1', '37', 'firstPics/1491986051947.jpg', '0', '20170412163411', '1', '民间艺术', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1415', '12', '20170412163543', '-1', '35', 'firstPics/1491986143611.jpg', '0', '20170412163543', '1', '全场五折', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1425', '12', '20170412163604', '-1', '35', 'firstPics/1491986164510.jpg', '0', '20170412163604', '1', '元旦大减价', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1435', '12', '20170412163620', '-1', '35', 'firstPics/1491986180277.jpg', '0', '20170412163620', '1', '周年庆', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1445', '12', '20170412163758', '-1', '35', 'firstPics/1491986278938.jpg', '0', '20170412163758', '1', '女人季打折', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1455', '12', '20170412163834', '-1', '35', 'firstPics/1491986314327.jpg', '0', '20170412163834', '1', '过年大折扣', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1465', '12', '20170412163901', '-1', '35', 'firstPics/1491986341195.jpg', '0', '20170412163901', '1', '腊八食品大降价', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1475', '12', '20170412163924', '-1', '35', 'firstPics/1491986364202.jpg', '0', '20170412163924', '1', '新店开张大减价', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1485', '14', '20170412164012', '-1', '36', 'firstPics/1491986412923.jpg', '0', '20170412164012', '1', '寻找牛登荣', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1495', '14', '20170412164047', '-1', '36', 'firstPics/1491986447100.jpg', '0', '20170412164047', '1', '寻找宋善利', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1505', '14', '20170412164129', '-1', '36', 'firstPics/1491986489038.jpg', '0', '20170412164129', '1', '寻找许旺成小朋友', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1515', '14', '20170412164203', '-1', '36', 'firstPics/1491986523408.jpg', '0', '20170412164203', '1', '高儒亮4岁', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1525', '15', '20170412164254', '-1', '36', 'firstPics/1491986574864.jpg', '0', '20170412164254', '1', '厚学课堂', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1535', '15', '20170412164321', '-1', '36', 'firstPics/1491986601320.jpg', '0', '20170412164321', '1', '厚学网', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1545', '15', '20170412164343', '-1', '36', 'firstPics/1491986623923.jpg', '0', '20170412164343', '1', '中科教育', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1555', '15', '20170412164409', '-1', '36', 'firstPics/1491986649649.jpg', '0', '20170412164409', '1', '润禾教育', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1565', '15', '20170412164443', '-1', '36', 'firstPics/1491986683683.jpg', '0', '20170412164443', '1', '傅元教育', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1575', '15', '20170412164515', '-1', '36', 'firstPics/1491986715628.jpg', '0', '20170412164515', '1', '中小学专业辅导', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1585', '15', '20170412164603', '-1', '36', 'firstPics/1491986763098.jpg', '0', '20170412164603', '1', '专业会计培训', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1595', '13', '20170412164710', '-1', '36', 'firstPics/1491986830796.jpg', '0', '20170412164710', '1', '钱包和证件', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1605', '13', '20170412164735', '-1', '36', 'firstPics/1491986854986.jpg', '0', '20170412164735', '1', 'psp', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1615', '13', '20170412164821', '-1', '36', 'firstPics/1491986901790.jpg', '2', '20170412164821', '1', '床单和床垫', '250', '250', '1', '5', '0');
INSERT INTO `ad` VALUES ('1625', '13', '20170412164840', '-1', '36', 'firstPics/1491986920980.jpg', '0', '20170412164840', '1', 'U盘', '250', '250', '1', '4', '0');
INSERT INTO `ad` VALUES ('1635', '13', '20170412164910', '-1', '36', 'firstPics/1491986950271.jpg', '0', '20170412164910', '1', 'psp', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1645', '13', '20170412164935', '-1', '36', 'firstPics/1491986975670.jpg', '0', '20170412164935', '1', '证书', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1655', '16', '20170412165312', '-1', '36', 'firstPics/1491987192012.jpg', '0', '20170412165312', '1', '特步打折', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1665', '16', '20170412165537', '-1', '36', 'firstPics/1491987337295.jpg', '0', '20170412165537', '1', '天涯老火锅', '250', '250', '1', '1', '0');
INSERT INTO `ad` VALUES ('1675', '16', '20170412165614', '-1', '36', 'firstPics/1491987374816.jpg', '0', '20170412165614', '1', '黄氏自助火锅', '250', '250', '1', '0', '0');
INSERT INTO `ad` VALUES ('1685', '16', '20170412165638', '-1', '36', 'firstPics/1491987398160.jpg', '3', '20170412165638', '1', '齐齐火锅', '250', '250', '1', '0', '0');

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
INSERT INTO `administrator` VALUES ('1', 'xjp', '1234', '0', '1|2|3|4|6|5|7', '15730055192@163.com', '115159', '2017-04-21 21:29:40', '1');
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
-- Table structure for cost
-- ----------------------------
DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost` (
  `costId` int(10) NOT NULL AUTO_INCREMENT,
  `grade` int(10) DEFAULT NULL,
  `money` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`costId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cost
-- ----------------------------
INSERT INTO `cost` VALUES ('1', '1', '50', '40');
INSERT INTO `cost` VALUES ('2', '2', '100', '10');
INSERT INTO `cost` VALUES ('3', '3', '200', '15');
INSERT INTO `cost` VALUES ('5', '3', '250', '10');

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
) ENGINE=MyISAM AUTO_INCREMENT=893 DEFAULT CHARSET=utf8;

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
INSERT INTO `pic` VALUES ('832', 'photoes/1490582765400.jpg', '100', '100', '0', '1215');
INSERT INTO `pic` VALUES ('829', 'photoes/1490191283421.jpg', '1280', '935', '0', '1195');
INSERT INTO `pic` VALUES ('591', 'photoes/1395373138675.jpg', '373', '500', '1', '62');
INSERT INTO `pic` VALUES ('592', 'photoes/1395373138675.jpg', '373', '500', '1', '63');
INSERT INTO `pic` VALUES ('593', 'photoes/1395373138675.jpg', '373', '500', '1', '64');
INSERT INTO `pic` VALUES ('594', 'photoes/1395373139209.jpg', '1701', '1228', '1', '59');
INSERT INTO `pic` VALUES ('831', 'photoes/1490581382055.jpg', '100', '100', '0', '1205');
INSERT INTO `pic` VALUES ('828', 'photoes/1490190910585.jpg', '1280', '935', '0', '1185');
INSERT INTO `pic` VALUES ('597', 'photoes/1395373139209.jpg', '1701', '1228', '1', '62');
INSERT INTO `pic` VALUES ('598', 'photoes/1395373139209.jpg', '1701', '1228', '1', '63');
INSERT INTO `pic` VALUES ('599', 'photoes/1395373139209.jpg', '1701', '1228', '1', '64');
INSERT INTO `pic` VALUES ('600', 'photoes/1395380780145.jpg', '1024', '768', '1', '59');
INSERT INTO `pic` VALUES ('601', 'photoes/1395380781389.jpg', '1024', '768', '1', '59');
INSERT INTO `pic` VALUES ('830', 'photoes/1490580026051.jpg', '100', '100', '0', '1195');
INSERT INTO `pic` VALUES ('827', 'photoes/1490188891365.jpg', '533', '536', '0', '1175');
INSERT INTO `pic` VALUES ('604', 'photoes/1395384016518.jpg', '773', '580', '1', '62');
INSERT INTO `pic` VALUES ('826', 'photoes/1490188767948.jpg', '1920', '1080', '0', '1165');
INSERT INTO `pic` VALUES ('607', 'photoes/1395384017615.jpg', '1024', '659', '1', '62');
INSERT INTO `pic` VALUES ('825', 'photoes/1490186725922.jpg', '533', '536', '0', '1155');
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
INSERT INTO `pic` VALUES ('833', 'photoes/1490598782948.jpg', '457', '302', '0', '1225');
INSERT INTO `pic` VALUES ('806', 'photoes/1484141105902.jpg', '1024', '768', '1', '965');
INSERT INTO `pic` VALUES ('834', 'photoes/1490598810349.jpg', '150', '150', '0', '1235');
INSERT INTO `pic` VALUES ('835', 'photoes/1490599029703.jpg', '457', '302', '0', '1245');
INSERT INTO `pic` VALUES ('836', 'photoes/1490601222863.jpg', '1024', '768', '0', '1255');
INSERT INTO `pic` VALUES ('824', 'photoes/1490186509341.jpg', '58', '36', '0', '1145');
INSERT INTO `pic` VALUES ('820', 'photoes/1490185301681.jpg', '100', '120', '0', '1105');
INSERT INTO `pic` VALUES ('821', 'photoes/1490185567052.jpg', '58', '36', '0', '1115');
INSERT INTO `pic` VALUES ('822', 'photoes/1490186147752.jpg', '58', '36', '0', '1125');
INSERT INTO `pic` VALUES ('823', 'photoes/1490186185264.jpg', '58', '36', '0', '1135');
INSERT INTO `pic` VALUES ('819', 'photoes/1490181438751.jpg', '512', '512', '0', '1095');
INSERT INTO `pic` VALUES ('816', 'photoes/1489559060414.jpg', '212', '300', '1', '1065');
INSERT INTO `pic` VALUES ('817', 'photoes/1489559080771.jpg', '211', '300', '1', '1075');
INSERT INTO `pic` VALUES ('818', 'photoes/1489559200918.jpg', '235', '300', '1', '1085');
INSERT INTO `pic` VALUES ('798', 'photoes/1484132413660.jpg', '1024', '768', '0', '935');
INSERT INTO `pic` VALUES ('799', 'photoes/1484132431271.jpg', '1024', '768', '1', '945');
INSERT INTO `pic` VALUES ('800', 'photoes/1484132876446.jpg', '1024', '768', '1', '945');
INSERT INTO `pic` VALUES ('801', 'photoes/1484133161648.jpg', '1024', '768', '1', '945');
INSERT INTO `pic` VALUES ('802', 'photoes/1484133606937.jpg', '1449', '1920', '1', '945');
INSERT INTO `pic` VALUES ('803', 'photoes/1484133607560.jpg', '1449', '1920', '1', '945');
INSERT INTO `pic` VALUES ('804', 'photoes/1484133655256.jpg', '1449', '1920', '1', '955');
INSERT INTO `pic` VALUES ('805', 'photoes/1484133655630.jpg', '1449', '1920', '1', '955');
INSERT INTO `pic` VALUES ('797', 'photoes/1484132070956.jpg', '1024', '768', '1', '925');
INSERT INTO `pic` VALUES ('796', 'photoes/1484131928828.jpg', '1024', '768', '0', '915');
INSERT INTO `pic` VALUES ('795', 'photoes/1484122397773.jpg', '1920', '1200', '0', '905');
INSERT INTO `pic` VALUES ('794', 'photoes/1484122397571.jpg', '1680', '1050', '0', '905');
INSERT INTO `pic` VALUES ('783', 'photoes/1484055239983.jpg', '1024', '768', '0', '845');
INSERT INTO `pic` VALUES ('784', 'photoes/1484055724816.jpg', '1680', '1050', '1', '855');
INSERT INTO `pic` VALUES ('785', 'photoes/1484055725114.jpg', '1920', '1200', '1', '855');
INSERT INTO `pic` VALUES ('788', 'photoes/1484122357632.jpg', '1280', '720', '1', '875');
INSERT INTO `pic` VALUES ('789', 'photoes/1484122358035.jpg', '1920', '1080', '1', '875');
INSERT INTO `pic` VALUES ('790', 'photoes/1484122377263.jpg', '1680', '1050', '1', '885');
INSERT INTO `pic` VALUES ('791', 'photoes/1484122377479.jpg', '1440', '900', '1', '885');
INSERT INTO `pic` VALUES ('792', 'photoes/1484122396246.jpg', '1680', '1050', '0', '895');
INSERT INTO `pic` VALUES ('793', 'photoes/1484122396503.jpg', '1920', '1200', '0', '895');
INSERT INTO `pic` VALUES ('782', 'photoes/1484055239811.jpg', '1024', '768', '0', '845');
INSERT INTO `pic` VALUES ('815', 'photoes/1489508099149.jpg', '435', '240', '1', '1055');
INSERT INTO `pic` VALUES ('814', 'photoes/1489508082153.jpg', '265', '240', '1', '1045');
INSERT INTO `pic` VALUES ('807', 'photoes/1484141205470.jpg', '1024', '768', '1', '975');
INSERT INTO `pic` VALUES ('808', 'photoes/1484141306451.jpg', '1024', '768', '1', '985');
INSERT INTO `pic` VALUES ('809', 'photoes/1488366842909.jpg', '1449', '1920', '1', '995');
INSERT INTO `pic` VALUES ('810', 'photoes/1488372512280.jpg', '1024', '768', '1', '1005');
INSERT INTO `pic` VALUES ('811', 'photoes/1489507548977.jpg', '172', '240', '1', '1015');
INSERT INTO `pic` VALUES ('812', 'photoes/1489507579555.jpg', '194', '240', '1', '1025');
INSERT INTO `pic` VALUES ('813', 'photoes/1489507607950.jpg', '384', '240', '1', '1035');
INSERT INTO `pic` VALUES ('773', 'photoes/1484035222664.jpg', '1024', '768', '0', '755');
INSERT INTO `pic` VALUES ('837', 'photoes/1490601301854.jpg', '512', '512', '0', '1265');
INSERT INTO `pic` VALUES ('843', 'photoes/1490605885246.jpg', '457', '302', '0', '1325');
INSERT INTO `pic` VALUES ('771', 'photoes/1484034284020.jpg', '1024', '768', '0', '735');
INSERT INTO `pic` VALUES ('772', 'photoes/1484034439955.jpg', '1024', '768', '0', '745');
INSERT INTO `pic` VALUES ('838', 'photoes/1490601822572.jpg', '1024', '768', '0', '1275');
INSERT INTO `pic` VALUES ('839', 'photoes/1490601905409.jpg', '640', '360', '0', '1285');
INSERT INTO `pic` VALUES ('840', 'photoes/1490602212818.jpg', '640', '360', '0', '1295');
INSERT INTO `pic` VALUES ('841', 'photoes/1490605834619.jpg', '457', '302', '0', '1305');
INSERT INTO `pic` VALUES ('842', 'photoes/1490605860884.jpg', '457', '302', '0', '1315');
INSERT INTO `pic` VALUES ('774', 'photoes/1484035253535.jpg', '1024', '768', '0', '765');
INSERT INTO `pic` VALUES ('775', 'photoes/1484035262550.jpg', '1024', '768', '0', '775');
INSERT INTO `pic` VALUES ('776', 'photoes/1484039257169.jpg', '1024', '768', '0', '785');
INSERT INTO `pic` VALUES ('777', 'photoes/1484039492207.jpg', '1024', '768', '0', '795');
INSERT INTO `pic` VALUES ('778', 'photoes/1484040306461.jpg', '1024', '768', '0', '805');
INSERT INTO `pic` VALUES ('780', 'photoes/1484053955060.jpg', '1024', '768', '1', '825');
INSERT INTO `pic` VALUES ('781', 'photoes/1484054076988.jpg', '1680', '1050', '0', '835');
INSERT INTO `pic` VALUES ('844', 'photoes/1490605920398.jpg', '457', '302', '0', '1335');
INSERT INTO `pic` VALUES ('845', 'photoes/1490606071247.jpg', '120', '119', '0', '1345');
INSERT INTO `pic` VALUES ('846', 'photoes/1491985808268.jpg', '424', '300', '1', '1355');
INSERT INTO `pic` VALUES ('847', 'photoes/1491985808522.jpg', '451', '300', '1', '1355');
INSERT INTO `pic` VALUES ('848', 'photoes/1491985849996.jpg', '452', '300', '1', '1365');
INSERT INTO `pic` VALUES ('849', 'photoes/1491985850037.jpg', '448', '300', '1', '1365');
INSERT INTO `pic` VALUES ('850', 'photoes/1491985907373.jpg', '614', '300', '1', '1375');
INSERT INTO `pic` VALUES ('851', 'photoes/1491985907413.jpg', '540', '260', '1', '1375');
INSERT INTO `pic` VALUES ('852', 'photoes/1491985934708.jpg', '400', '300', '1', '1385');
INSERT INTO `pic` VALUES ('853', 'photoes/1491985987374.jpg', '450', '300', '1', '1395');
INSERT INTO `pic` VALUES ('854', 'photoes/1491985987402.jpg', '446', '300', '1', '1395');
INSERT INTO `pic` VALUES ('855', 'photoes/1491986051947.jpg', '343', '300', '1', '1405');
INSERT INTO `pic` VALUES ('856', 'photoes/1491986051972.jpg', '450', '300', '1', '1405');
INSERT INTO `pic` VALUES ('857', 'photoes/1491986051976.jpg', '400', '300', '1', '1405');
INSERT INTO `pic` VALUES ('858', 'photoes/1491986143611.jpg', '450', '300', '1', '1415');
INSERT INTO `pic` VALUES ('859', 'photoes/1491986164510.jpg', '759', '300', '1', '1425');
INSERT INTO `pic` VALUES ('860', 'photoes/1491986180277.jpg', '463', '300', '1', '1435');
INSERT INTO `pic` VALUES ('861', 'photoes/1491986278938.jpg', '229', '300', '1', '1445');
INSERT INTO `pic` VALUES ('862', 'photoes/1491986314327.jpg', '229', '300', '1', '1455');
INSERT INTO `pic` VALUES ('863', 'photoes/1491986341195.jpg', '228', '300', '1', '1465');
INSERT INTO `pic` VALUES ('864', 'photoes/1491986364202.jpg', '400', '300', '1', '1475');
INSERT INTO `pic` VALUES ('865', 'photoes/1491986412923.jpg', '211', '300', '1', '1485');
INSERT INTO `pic` VALUES ('866', 'photoes/1491986447100.jpg', '225', '300', '1', '1495');
INSERT INTO `pic` VALUES ('867', 'photoes/1491986489038.jpg', '212', '300', '1', '1505');
INSERT INTO `pic` VALUES ('868', 'photoes/1491986523408.jpg', '225', '300', '1', '1515');
INSERT INTO `pic` VALUES ('869', 'photoes/1491986574864.jpg', '400', '200', '1', '1525');
INSERT INTO `pic` VALUES ('870', 'photoes/1491986601320.jpg', '400', '200', '1', '1535');
INSERT INTO `pic` VALUES ('871', 'photoes/1491986623923.jpg', '445', '300', '1', '1545');
INSERT INTO `pic` VALUES ('872', 'photoes/1491986649649.jpg', '438', '300', '1', '1555');
INSERT INTO `pic` VALUES ('873', 'photoes/1491986683683.jpg', '480', '300', '1', '1565');
INSERT INTO `pic` VALUES ('874', 'photoes/1491986715628.jpg', '659', '300', '1', '1575');
INSERT INTO `pic` VALUES ('875', 'photoes/1491986763098.jpg', '300', '300', '1', '1585');
INSERT INTO `pic` VALUES ('876', 'photoes/1491986830796.jpg', '225', '300', '1', '1595');
INSERT INTO `pic` VALUES ('877', 'photoes/1491986854986.jpg', '309', '300', '1', '1605');
INSERT INTO `pic` VALUES ('878', 'photoes/1491986901790.jpg', '279', '300', '1', '1615');
INSERT INTO `pic` VALUES ('879', 'photoes/1491986920980.jpg', '375', '300', '1', '1625');
INSERT INTO `pic` VALUES ('880', 'photoes/1491986950271.jpg', '298', '300', '1', '1635');
INSERT INTO `pic` VALUES ('881', 'photoes/1491986975670.jpg', '394', '300', '1', '1645');
INSERT INTO `pic` VALUES ('882', 'photoes/1491987192012.jpg', '600', '300', '1', '1655');
INSERT INTO `pic` VALUES ('883', 'photoes/1491987337295.jpg', '435', '300', '1', '1665');
INSERT INTO `pic` VALUES ('884', 'photoes/1491987374816.jpg', '472', '300', '1', '1675');
INSERT INTO `pic` VALUES ('885', 'photoes/1491987398160.jpg', '619', '300', '1', '1685');

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
INSERT INTO `post` VALUES ('11', '12啊', '1', '-1', null, '944', '944', '1');
INSERT INTO `post` VALUES ('12', '图书馆', '2', '-1', null, '17', '17', '1');
INSERT INTO `post` VALUES ('36', '三峡广场', '19', '0', '20170412153456', null, null, '5');
INSERT INTO `post` VALUES ('4', '明主湖', '1', '-1', null, '10559', '10559', '4');
INSERT INTO `post` VALUES ('5', '9舍', '1', '-1', null, '50', '50', '1');
INSERT INTO `post` VALUES ('6', '12教学楼', '1', '-1', null, '11', '11', '1');
INSERT INTO `post` VALUES ('8', '13舍', '1', '-1', null, '7', '7', '1');
INSERT INTO `post` VALUES ('1', '重庆大学总栏', '1', '-1', null, '12', '12', '1');
INSERT INTO `post` VALUES ('3', '三峡广场总栏', '3', '-1', null, '1', '1', '1');
INSERT INTO `post` VALUES ('2', '西南大学总栏', '2', '-1', null, '12', '12', '1');
INSERT INTO `post` VALUES ('14', '重庆八中总栏', '8', '-1', null, '133', '133', '1');
INSERT INTO `post` VALUES ('15', '重庆一中总栏', '9', '-1', null, '40', '40', '4');
INSERT INTO `post` VALUES ('16', '红花小学', '10', '-1', null, '51', '51', '3');
INSERT INTO `post` VALUES ('17', '12图书馆', '7', '-1', null, '4', '4', '1');
INSERT INTO `post` VALUES ('18', '12食堂', '7', '-1', null, '3', '3', '1');
INSERT INTO `post` VALUES ('19', '重庆12', '7', '-1', null, '1', '1', '1');
INSERT INTO `post` VALUES ('20', '12超市', '1', '-1', null, '4', '4', '1');
INSERT INTO `post` VALUES ('21', '重百专栏', '11', '11', null, '376', '376', '0');
INSERT INTO `post` VALUES ('22', '幸福小区', '12', '-1', '20131006135656', '31', '31', '7');
INSERT INTO `post` VALUES ('24', 'zhulingyun', '1', '12', '20131006160658', '20', '20', '1');
INSERT INTO `post` VALUES ('25', '1111', '1', '13', '20131020185231', '5', '5', '1');
INSERT INTO `post` VALUES ('9', '一中', '1', '-1', null, '2', '2', '1');
INSERT INTO `post` VALUES ('28', '2中', '1', '-1', null, '3', '3', '1');
INSERT INTO `post` VALUES ('29', '3', '1', '7', null, '0', '0', '1');
INSERT INTO `post` VALUES ('30', '4', '1', '1', null, '2', '2', '1');
INSERT INTO `post` VALUES ('31', '4354', '1', '65', null, '5', '5', '1');
INSERT INTO `post` VALUES ('32', '寻物', '12', '-1', '20170314234159', null, null, '6');
INSERT INTO `post` VALUES ('33', '北京大道', '14', '0', '20170315001013', null, null, '6');
INSERT INTO `post` VALUES ('34', '寻猫', '12', '0', '20170315142237', null, null, '6');
INSERT INTO `post` VALUES ('35', '永辉超市', '19', '0', '20170412152711', null, null, '7');
INSERT INTO `post` VALUES ('37', '磁器口古镇', '19', '0', '20170412153606', null, null, '6');
INSERT INTO `post` VALUES ('38', '粘贴栏测试', '20', '0', '20170421213030', null, null, '1');

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
INSERT INTO `unit` VALUES ('7', '12大学', '1');
INSERT INTO `unit` VALUES ('8', '重庆八中', '2');
INSERT INTO `unit` VALUES ('9', '重庆一中', '2');
INSERT INTO `unit` VALUES ('10', '红花小学', '3');
INSERT INTO `unit` VALUES ('11', '重百', '4');
INSERT INTO `unit` VALUES ('12', '幸福小区', '6');
INSERT INTO `unit` VALUES ('14', '城关小区', '6');
INSERT INTO `unit` VALUES ('15', '360', '5');
INSERT INTO `unit` VALUES ('18', '重邮', '1');
INSERT INTO `unit` VALUES ('19', '沙坪坝地区', '6');
INSERT INTO `unit` VALUES ('20', '单位测试', '7');

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
INSERT INTO `unittype` VALUES ('7', '测试');

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
INSERT INTO `user` VALUES ('10', '张晨', '123', '295739817@qq.com', '12324253653', '0001', null, null);
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
) ENGINE=InnoDB AUTO_INCREMENT=1262 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of visitorlog
-- ----------------------------
INSERT INTO `visitorlog` VALUES ('172.25.98.41', '12啊', '556', '0000000011', '2017-01-03 21:19:05', '82');
INSERT INTO `visitorlog` VALUES ('172.25.98.41', '重庆八中总栏', '557', '0000000014', '2017-01-03 21:56:44', '0');
INSERT INTO `visitorlog` VALUES ('172.25.98.41', '重庆八中总栏', '558', '0000000014', '2017-01-03 22:00:52', '0');
INSERT INTO `visitorlog` VALUES ('172.25.98.41', '重庆八中总栏', '559', '0000000014', '2017-01-03 22:01:08', '485');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '560', '0000000014', '2017-01-03 22:01:34', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '561', '0000000014', '2017-01-03 22:01:38', '485');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '563', '0000000014', '2017-01-04 12:22:57', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '564', '0000000004', '2017-01-04 12:24:53', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '565', '0000000004', '2017-01-04 12:26:29', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '566', '0000000004', '2017-01-04 12:29:57', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '567', '0000000014', '2017-01-04 18:40:26', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '568', '0000000014', '2017-01-04 18:42:45', '0');
INSERT INTO `visitorlog` VALUES ('172.25.98.41', '重庆八中总栏', '569', '0000000014', '2017-01-04 18:45:03', '0');
INSERT INTO `visitorlog` VALUES ('172.25.98.41', '重庆八中总栏', '570', '0000000014', '2017-01-04 18:46:57', '0');
INSERT INTO `visitorlog` VALUES ('172.25.98.41', '重庆八中总栏', '571', '0000000014', '2017-01-04 18:49:03', '0');
INSERT INTO `visitorlog` VALUES ('172.25.98.41', '重庆八中总栏', '572', '0000000014', '2017-01-04 18:53:05', '0');
INSERT INTO `visitorlog` VALUES ('172.25.98.41', '重庆八中总栏', '573', '0000000014', '2017-01-04 18:54:38', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '574', '0000000014', '2017-01-05 22:03:32', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '575', '0000000014', '2017-01-05 22:04:42', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '576', '0000000014', '2017-01-05 22:09:54', '495');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '577', '0000000011', '2017-01-06 12:11:38', '465');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '578', '0000000021', '2017-01-06 18:29:24', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '579', '0000000014', '2017-01-06 18:30:30', '495');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '580', '0000000004', '2017-01-09 15:04:41', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '581', '0000000014', '2017-01-09 15:05:05', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '582', '0000000016', '2017-01-09 15:07:01', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '583', '0000000016', '2017-01-09 16:04:20', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '584', '0000000016', '2017-01-09 16:25:10', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '585', '0000000011', '2017-01-10 15:48:40', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '586', '0000000011', '2017-01-10 15:49:20', '82');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '587', '0000000011', '2017-01-10 15:49:32', '85');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '588', '0000000011', '2017-01-10 15:51:33', '85');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '589', '0000000004', '2017-01-10 15:52:53', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '590', '0000000011', '2017-01-10 15:52:58', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '591', '0000000011', '2017-01-10 15:53:00', '82');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '592', '0000000011', '2017-01-10 15:54:06', '82');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '593', '0000000011', '2017-01-10 15:54:10', '80');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '594', '0000000011', '2017-01-10 15:55:27', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '595', '0000000011', '2017-01-10 15:55:29', '82');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '596', '0000000004', '2017-01-10 15:57:25', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '597', '0000000004', '2017-01-10 15:57:35', '75');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '598', '0000000011', '2017-01-10 15:58:48', '82');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '599', '0000000011', '2017-01-10 16:00:06', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '600', '0000000011', '2017-01-10 16:00:36', '82');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '601', '0000000004', '2017-01-10 16:11:31', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '602', '0000000004', '2017-01-10 16:20:01', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '603', '0000000004', '2017-01-10 17:07:59', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '604', '0000000011', '2017-01-10 17:08:06', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '605', '0000000011', '2017-01-10 17:08:07', '80');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '606', '0000000011', '2017-01-10 17:12:06', '795');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '607', '0000000005', '2017-01-10 17:14:57', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '608', '0000000014', '2017-01-10 17:15:11', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '609', '0000000011', '2017-01-10 17:16:47', '795');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '610', '0000000011', '2017-01-10 17:24:33', '795');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '611', '0000000011', '2017-01-10 17:24:39', '455');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '612', '0000000011', '2017-01-10 17:24:43', '425');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '613', '0000000011', '2017-01-10 17:25:28', '805');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '614', '0000000011', '2017-01-10 17:27:05', '805');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '615', '0000000014', '2017-01-10 17:33:48', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '616', '0000000014', '2017-01-10 17:33:54', '70');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '617', '0000000014', '2017-01-10 17:35:00', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '618', '0000000014', '2017-01-10 17:37:56', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '619', '0000000014', '2017-01-10 17:38:01', '505');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '620', '0000000016', '2017-01-10 17:38:22', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '621', '0000000011', '2017-01-10 17:39:15', '805');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '622', '0000000011', '2017-01-10 17:41:37', '805');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '623', '0000000011', '2017-01-10 17:42:01', '455');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '624', '0000000011', '2017-01-10 17:44:37', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '625', '0000000011', '2017-01-10 17:44:40', '80');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '626', '0000000011', '2017-01-10 17:45:27', '82');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '627', '0000000021', '2017-01-10 17:45:54', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '628', '0000000021', '2017-01-10 17:45:56', '5');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '629', '0000000021', '2017-01-10 17:47:26', '5');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '630', '0000000016', '2017-01-10 21:04:28', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '631', '0000000014', '2017-01-10 21:05:21', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '632', '0000000015', '2017-01-10 21:06:32', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '633', '0000000016', '2017-01-10 21:32:56', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '634', '0000000016', '2017-01-10 21:36:14', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '635', '0000000014', '2017-01-10 21:36:50', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '636', '0000000015', '2017-01-10 21:36:56', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '637', '0000000015', '2017-01-10 21:44:45', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '638', '0000000015', '2017-01-10 21:44:48', '865');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '639', '0000000015', '2017-01-11 18:47:13', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '640', '0000000015', '2017-01-11 18:47:15', '865');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '641', '0000000011', '2017-01-11 18:48:49', '805');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '642', '0000000011', '2017-01-11 18:51:30', '805');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '643', '0000000011', '2017-01-11 18:51:38', '795');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '644', '0000000016', '2017-01-11 19:13:15', '945');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '645', '0000000015', '2017-01-11 19:13:35', '925');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '重百专栏', '646', '0000000021', '2017-01-11 21:23:25', '7');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '红花小学', '647', '0000000016', '2017-01-11 21:23:45', '0');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '红花小学', '648', '0000000016', '2017-01-11 21:23:47', '11');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '重庆一中总栏', '649', '0000000015', '2017-01-11 21:24:08', '0');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '重庆一中总栏', '650', '0000000015', '2017-01-11 21:24:13', '865');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '明主湖', '651', '0000000004', '2017-01-11 21:24:24', '0');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '明主湖', '652', '0000000004', '2017-01-11 21:24:26', '34');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '明主湖', '653', '0000000004', '2017-01-11 21:24:32', '59');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '红花小学', '654', '0000000016', '2017-01-11 21:29:43', '0');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '红花小学', '655', '0000000016', '2017-01-11 21:29:49', '965');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '红花小学', '656', '0000000016', '2017-01-11 21:30:01', '985');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '12啊', '657', '0000000011', '2017-01-11 22:00:47', '0');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '明主湖', '658', '0000000004', '2017-01-11 22:00:55', '0');
INSERT INTO `visitorlog` VALUES ('172.22.225.52', '明主湖', '659', '0000000004', '2017-01-11 22:04:47', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '660', '0000000014', '2017-01-13 09:20:02', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '661', '0000000014', '2017-01-13 09:20:05', '70');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '662', '0000000014', '2017-01-13 09:22:16', '70');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '663', '0000000014', '2017-01-13 09:22:23', '10');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '664', '0000000014', '2017-01-13 09:22:30', '9');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '665', '0000000014', '2017-01-13 09:22:34', '8');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '666', '0000000014', '2017-01-13 09:26:11', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '667', '0000000014', '2017-01-13 09:26:13', '10');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '668', '0000000014', '2017-01-13 09:26:35', '7');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '669', '0000000004', '2017-02-20 12:25:03', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '670', '0000000014', '2017-03-01 19:11:42', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '671', '0000000014', '2017-03-01 19:11:49', '70');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '672', '0000000014', '2017-03-01 19:11:54', '10');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '673', '0000000014', '2017-03-01 19:11:56', '9');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '674', '0000000014', '2017-03-01 19:11:59', '8');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '675', '0000000014', '2017-03-01 19:12:00', '7');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '676', '0000000022', '2017-03-01 19:18:45', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '677', '0000000022', '2017-03-01 19:18:49', '955');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '幸福小区', '678', '0000000022', '2017-03-01 20:20:56', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '幸福小区', '679', '0000000022', '2017-03-01 20:21:01', '995');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '幸福小区', '680', '0000000022', '2017-03-01 20:26:50', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '幸福小区', '681', '0000000022', '2017-03-01 20:26:58', '995');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '幸福小区', '682', '0000000022', '2017-03-01 20:28:36', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '幸福小区', '683', '0000000022', '2017-03-01 20:29:03', '995');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '幸福小区', '684', '0000000022', '2017-03-01 20:30:13', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '重庆一中总栏', '685', '0000000015', '2017-03-01 20:30:38', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '红花小学', '686', '0000000016', '2017-03-01 20:30:59', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '重百专栏', '687', '0000000021', '2017-03-01 20:31:13', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '重百专栏', '688', '0000000021', '2017-03-01 20:32:17', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '重百专栏', '689', '0000000021', '2017-03-01 20:33:27', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '重百专栏', '690', '0000000021', '2017-03-01 20:34:51', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '重百专栏', '691', '0000000021', '2017-03-01 20:36:16', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '重百专栏', '692', '0000000021', '2017-03-01 20:36:24', '8');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '重百专栏', '693', '0000000021', '2017-03-01 20:36:37', '7');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '明主湖', '694', '0000000004', '2017-03-01 20:37:10', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '明主湖', '695', '0000000004', '2017-03-01 20:37:23', '75');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '明主湖', '696', '0000000004', '2017-03-01 20:39:32', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '明主湖', '697', '0000000004', '2017-03-01 20:39:43', '83');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '明主湖', '698', '0000000004', '2017-03-01 20:39:59', '75');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '明主湖', '699', '0000000004', '2017-03-01 20:40:05', '72');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '红花小学', '700', '0000000016', '2017-03-01 20:47:56', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '幸福小区', '701', '0000000022', '2017-03-01 20:50:03', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '红花小学', '702', '0000000016', '2017-03-01 20:51:39', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '红花小学', '703', '0000000016', '2017-03-01 20:51:41', '1005');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '9舍', '704', '0000000005', '2017-03-01 21:19:54', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '明主湖', '705', '0000000004', '2017-03-01 21:20:17', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '12啊', '706', '0000000011', '2017-03-01 21:20:27', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '9舍', '707', '0000000005', '2017-03-01 21:21:06', '0');
INSERT INTO `visitorlog` VALUES ('172.22.90.96', '明主湖', '708', '0000000004', '2017-03-01 21:31:19', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '12啊', '709', '0000000011', '2017-03-14 16:01:38', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '明主湖', '710', '0000000004', '2017-03-14 16:01:45', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '9舍', '711', '0000000005', '2017-03-14 16:01:48', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '12教学楼', '712', '0000000006', '2017-03-14 16:01:51', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '图书馆', '713', '0000000012', '2017-03-14 16:01:54', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '重庆大学总栏', '714', '0000000001', '2017-03-14 16:01:57', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '西南大学总栏', '715', '0000000002', '2017-03-14 16:02:00', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', 'zhulingyun', '716', '0000000024', '2017-03-14 16:02:02', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '1111', '717', '0000000025', '2017-03-14 16:02:05', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '2中', '718', '0000000028', '2017-03-14 16:02:08', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '12图书馆', '719', '0000000017', '2017-03-14 16:07:36', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '图书馆', '720', '0000000012', '2017-03-14 16:07:36', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '721', '0000000011', '2017-03-14 16:10:36', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '722', '0000000004', '2017-03-14 16:10:39', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '723', '0000000005', '2017-03-14 16:10:41', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12教学楼', '724', '0000000006', '2017-03-14 16:10:44', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '13舍', '725', '0000000008', '2017-03-14 16:10:46', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆大学总栏', '726', '0000000001', '2017-03-14 16:10:48', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', 'zhulingyun', '727', '0000000024', '2017-03-14 16:10:50', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '图书馆', '728', '0000000012', '2017-03-14 16:10:54', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '西南大学总栏', '729', '0000000002', '2017-03-14 16:10:57', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12图书馆', '730', '0000000017', '2017-03-14 16:11:01', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '731', '0000000004', '2017-03-14 16:11:54', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', 'zhulingyun', '732', '0000000024', '2017-03-14 16:12:14', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '一中', '733', '0000000009', '2017-03-14 16:12:19', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '西南大学总栏', '734', '0000000002', '2017-03-14 16:12:27', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '4', '735', '0000000030', '2017-03-14 16:12:33', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '736', '0000000005', '2017-03-14 16:13:16', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '737', '0000000014', '2017-03-14 16:13:31', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '738', '0000000015', '2017-03-14 16:13:33', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重百专栏', '739', '0000000021', '2017-03-14 16:13:41', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '740', '0000000005', '2017-03-14 16:14:17', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '741', '0000000004', '2017-03-14 16:14:23', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '742', '0000000011', '2017-03-14 16:14:25', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '743', '0000000022', '2017-03-14 16:14:28', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12食堂', '744', '0000000018', '2017-03-14 16:14:46', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '4', '745', '0000000030', '2017-03-14 16:15:00', '0');
INSERT INTO `visitorlog` VALUES ('fe80:0:0:0:19e:8d97:e881:bf1c', '12啊', '746', '0000000011', '2017-03-14 16:15:10', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '747', '0000000011', '2017-03-14 16:15:37', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '748', '0000000004', '2017-03-14 16:15:42', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '13舍', '749', '0000000008', '2017-03-14 16:15:59', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '750', '0000000004', '2017-03-14 19:45:20', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '751', '0000000005', '2017-03-14 19:45:25', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '752', '0000000005', '2017-03-14 19:45:29', '76');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '753', '0000000014', '2017-03-14 19:45:44', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '754', '0000000014', '2017-03-14 19:45:52', '10');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '755', '0000000014', '2017-03-14 19:46:53', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '756', '0000000014', '2017-03-14 19:46:56', '70');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '757', '0000000004', '2017-03-14 19:47:09', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '758', '0000000022', '2017-03-14 19:47:24', '955');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '759', '0000000014', '2017-03-14 19:48:49', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '760', '0000000004', '2017-03-14 20:09:12', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '761', '0000000005', '2017-03-14 20:09:26', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '762', '0000000022', '2017-03-14 20:09:36', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '763', '0000000022', '2017-03-14 20:09:40', '955');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '764', '0000000022', '2017-03-14 20:13:49', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '765', '0000000015', '2017-03-14 20:13:54', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆一中总栏', '766', '0000000015', '2017-03-14 20:13:56', '855');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '767', '0000000014', '2017-03-14 20:14:30', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '768', '0000000011', '2017-03-14 23:01:33', '71');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '769', '0000000022', '2017-03-14 23:06:14', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '770', '0000000014', '2017-03-14 23:06:25', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12图书馆', '771', '0000000017', '2017-03-14 23:06:37', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '772', '0000000022', '2017-03-14 23:09:57', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '寻物', '773', '0000000032', '2017-03-14 23:43:52', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '寻物', '774', '0000000032', '2017-03-14 23:44:56', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '幸福小区', '775', '0000000022', '2017-03-14 23:45:00', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '寻物', '776', '0000000032', '2017-03-14 23:46:04', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '寻物', '777', '0000000032', '2017-03-14 23:56:01', '0');
INSERT INTO `visitorlog` VALUES ('172.25.99.12', '寻物', '778', '0000000032', '2017-03-14 23:59:06', '0');
INSERT INTO `visitorlog` VALUES ('172.25.99.12', '寻物', '779', '0000000032', '2017-03-15 00:08:06', '0');
INSERT INTO `visitorlog` VALUES ('172.25.99.12', '北京大道', '780', '0000000033', '2017-03-15 00:15:16', '1045');
INSERT INTO `visitorlog` VALUES ('172.25.99.12', '寻物', '781', '0000000032', '2017-03-15 00:19:25', '0');
INSERT INTO `visitorlog` VALUES ('172.25.99.12', '寻物', '782', '0000000032', '2017-03-15 00:20:29', '1015');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '783', '0000000011', '2017-03-15 13:28:23', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '红花小学', '784', '0000000016', '2017-03-15 13:28:34', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '785', '0000000011', '2017-03-15 13:28:39', '82');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '786', '0000000004', '2017-03-15 13:29:29', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '9舍', '787', '0000000005', '2017-03-15 13:29:39', '0');
INSERT INTO `visitorlog` VALUES ('172.25.99.12', '寻狗', '788', '0000000032', '2017-03-15 14:25:08', '0');
INSERT INTO `visitorlog` VALUES ('202.202.1.224', '4354', '789', '0000000031', '2017-03-15 15:10:11', '0');
INSERT INTO `visitorlog` VALUES ('202.202.1.224', '12啊', '790', '0000000011', '2017-03-15 15:10:52', '0');
INSERT INTO `visitorlog` VALUES ('202.202.1.224', '12啊', '791', '0000000011', '2017-03-15 15:12:20', '82');
INSERT INTO `visitorlog` VALUES ('202.202.1.224', '9舍', '792', '0000000005', '2017-03-15 15:42:19', '73');
INSERT INTO `visitorlog` VALUES ('202.202.1.224', '红花小学', '793', '0000000016', '2017-03-15 15:43:02', '1005');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '寻物', '794', '0000000032', '2017-03-15 16:11:12', '1015');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '12啊', '795', '0000000011', '2017-03-15 16:22:40', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', '9舍', '796', '0000000005', '2017-03-15 16:23:37', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.171', 'zhulingyun', '797', '0000000024', '2017-03-15 16:55:08', '0');
INSERT INTO `visitorlog` VALUES ('172.22.1.22', '寻猫', '798', '0000000034', '2017-03-15 21:33:20', '0');
INSERT INTO `visitorlog` VALUES ('172.22.1.22', '寻物', '799', '0000000032', '2017-03-15 21:35:34', '0');
INSERT INTO `visitorlog` VALUES ('172.22.1.22', '寻物', '800', '0000000032', '2017-03-15 21:36:11', '1015');
INSERT INTO `visitorlog` VALUES ('172.22.1.22', '寻物', '801', '0000000032', '2017-03-15 21:36:21', '1085');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '802', '0000000004', '2017-03-22 19:15:26', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '803', '0000000004', '2017-03-22 19:15:36', '75');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '804', '0000000004', '2017-03-22 19:15:53', '34');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '805', '0000000004', '2017-03-22 19:24:26', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '806', '0000000004', '2017-03-22 19:24:26', '75');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '807', '0000000004', '2017-03-22 19:24:27', '34');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '808', '0000000004', '2017-03-22 19:24:27', '34');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '809', '0000000004', '2017-03-22 19:52:57', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '810', '0000000004', '2017-03-22 19:52:57', '75');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '811', '0000000004', '2017-03-22 19:52:57', '34');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '812', '0000000004', '2017-03-22 19:54:54', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '813', '0000000004', '2017-03-22 19:54:54', '75');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '814', '0000000004', '2017-03-22 19:54:54', '34');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '815', '0000000004', '2017-03-22 19:56:41', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '816', '0000000004', '2017-03-22 19:56:41', '75');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '817', '0000000004', '2017-03-22 19:56:41', '34');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '818', '0000000004', '2017-03-22 19:58:54', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '819', '0000000004', '2017-03-22 19:58:55', '75');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '820', '0000000004', '2017-03-22 19:58:56', '34');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '821', '0000000004', '2017-03-22 20:00:00', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '822', '0000000004', '2017-03-22 20:00:04', '75');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '823', '0000000004', '2017-03-22 20:00:08', '34');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '824', '0000000004', '2017-03-22 20:08:40', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '825', '0000000004', '2017-03-22 20:08:40', '75');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '826', '0000000004', '2017-03-22 20:08:40', '34');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '12啊', '827', '0000000011', '2017-03-22 20:20:44', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '12啊', '828', '0000000011', '2017-03-22 20:20:48', '82');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '829', '0000000004', '2017-03-22 20:25:26', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '830', '0000000004', '2017-03-22 20:25:30', '83');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '831', '0000000004', '2017-03-22 20:35:36', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '832', '0000000004', '2017-03-22 20:35:38', '83');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '833', '0000000004', '2017-03-22 20:41:38', '0');
INSERT INTO `visitorlog` VALUES ('172.22.10.95', '明主湖', '834', '0000000004', '2017-03-22 20:41:40', '83');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '835', '0000000011', '2017-03-27 11:25:46', '0');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '836', '0000000011', '2017-03-27 11:25:55', '82');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '837', '0000000011', '2017-03-27 11:27:25', '0');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '838', '0000000011', '2017-03-27 11:29:49', '0');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '839', '0000000011', '2017-03-27 11:30:42', '82');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '840', '0000000011', '2017-03-27 11:31:52', '0');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '841', '0000000011', '2017-03-27 11:31:55', '80');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '842', '0000000011', '2017-03-27 11:33:09', '82');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '843', '0000000011', '2017-03-27 11:40:31', '0');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '844', '0000000011', '2017-03-27 11:40:34', '82');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '845', '0000000011', '2017-03-27 11:41:35', '0');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '846', '0000000011', '2017-03-27 11:41:43', '82');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '847', '0000000011', '2017-03-27 11:43:29', '82');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '848', '0000000011', '2017-03-27 11:45:16', '0');
INSERT INTO `visitorlog` VALUES ('172.22.121.60', '12啊', '849', '0000000011', '2017-03-27 11:46:54', '0');
INSERT INTO `visitorlog` VALUES ('172.22.180.179', '12啊', '850', '0000000011', '2017-03-27 14:39:53', '0');
INSERT INTO `visitorlog` VALUES ('172.22.180.179', '12啊', '851', '0000000011', '2017-03-27 14:40:01', '82');
INSERT INTO `visitorlog` VALUES ('172.22.180.179', '12啊', '852', '0000000011', '2017-03-27 14:41:05', '80');
INSERT INTO `visitorlog` VALUES ('172.22.180.179', '12啊', '853', '0000000011', '2017-03-27 15:06:27', '0');
INSERT INTO `visitorlog` VALUES ('172.22.180.179', '12啊', '854', '0000000011', '2017-03-27 15:06:30', '82');
INSERT INTO `visitorlog` VALUES ('172.22.180.179', '12啊', '855', '0000000011', '2017-03-27 15:13:40', '0');
INSERT INTO `visitorlog` VALUES ('172.22.180.179', '12啊', '856', '0000000011', '2017-03-27 15:13:44', '71');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '857', '0000000011', '2017-03-27 15:15:40', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '858', '0000000011', '2017-03-27 15:15:43', '66');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '859', '0000000011', '2017-03-27 15:16:06', '58');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '860', '0000000011', '2017-03-27 15:22:49', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '861', '0000000014', '2017-03-27 15:31:45', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '862', '0000000004', '2017-03-27 15:40:10', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '863', '0000000004', '2017-03-27 15:40:18', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '864', '0000000011', '2017-03-27 15:41:33', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '865', '0000000011', '2017-03-27 15:41:37', '71');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '866', '0000000011', '2017-03-27 15:42:58', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '867', '0000000011', '2017-03-27 15:43:01', '82');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '868', '0000000004', '2017-03-27 15:43:56', '72');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻物', '869', '0000000032', '2017-03-27 15:44:30', '1015');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '870', '0000000011', '2017-03-27 15:54:27', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '871', '0000000011', '2017-03-27 15:54:30', '82');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '872', '0000000011', '2017-03-27 15:57:23', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '873', '0000000011', '2017-03-27 15:57:23', '82');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '874', '0000000011', '2017-03-27 15:59:01', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '875', '0000000011', '2017-03-27 15:59:02', '82');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '876', '0000000011', '2017-03-27 16:04:45', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '877', '0000000011', '2017-03-27 16:07:18', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '878', '0000000011', '2017-03-27 16:10:08', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '879', '0000000011', '2017-03-27 16:13:13', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '12啊', '880', '0000000011', '2017-03-27 16:16:08', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '881', '0000000005', '2017-03-27 17:13:59', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.192', '9舍', '882', '0000000005', '2017-03-27 17:14:56', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '883', '0000000005', '2017-03-27 17:16:11', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '884', '0000000005', '2017-03-27 17:18:39', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '885', '0000000005', '2017-03-27 17:19:40', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '886', '0000000005', '2017-03-27 17:22:20', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '887', '0000000005', '2017-03-27 17:25:42', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '888', '0000000005', '2017-03-27 17:27:33', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '889', '0000000005', '2017-03-27 17:28:45', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '890', '0000000005', '2017-03-27 17:29:58', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '891', '0000000005', '2017-03-27 17:30:59', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '9舍', '892', '0000000005', '2017-03-27 17:35:48', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '893', '0000000014', '2017-03-27 19:50:25', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '西南大学总栏', '894', '0000000002', '2017-03-27 20:01:27', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '895', '0000000011', '2017-03-27 20:31:01', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '896', '0000000011', '2017-03-27 20:31:40', '79');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆八中总栏', '897', '0000000014', '2017-03-27 20:33:12', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆八中总栏', '898', '0000000014', '2017-03-27 20:34:01', '70');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '899', '0000000014', '2017-03-27 20:34:40', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '900', '0000000014', '2017-03-27 20:34:52', '70');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '901', '0000000011', '2017-03-27 21:02:27', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '902', '0000000011', '2017-03-27 21:02:34', '80');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '903', '0000000004', '2017-03-28 18:46:16', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '904', '0000000004', '2017-03-28 18:46:20', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '905', '0000000004', '2017-03-28 18:46:28', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '906', '0000000004', '2017-03-28 18:46:32', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '907', '0000000034', '2017-03-28 18:47:23', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '908', '0000000004', '2017-03-28 18:51:35', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '909', '0000000004', '2017-03-28 18:51:35', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '910', '0000000004', '2017-03-28 18:51:35', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '911', '0000000004', '2017-03-28 18:51:35', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '912', '0000000034', '2017-03-28 18:51:35', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '913', '0000000004', '2017-03-28 18:54:50', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '914', '0000000004', '2017-03-28 18:54:51', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '915', '0000000004', '2017-03-28 18:54:52', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '916', '0000000004', '2017-03-28 18:54:55', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '917', '0000000034', '2017-03-28 18:55:04', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '918', '0000000004', '2017-03-28 18:56:29', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '919', '0000000004', '2017-03-28 18:56:31', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '920', '0000000004', '2017-03-28 18:57:21', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '921', '0000000004', '2017-03-28 18:59:06', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '922', '0000000004', '2017-03-28 19:00:06', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '923', '0000000004', '2017-03-28 19:03:11', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '924', '0000000004', '2017-03-28 19:09:17', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '925', '0000000004', '2017-03-28 19:09:17', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '926', '0000000004', '2017-03-28 19:09:17', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '927', '0000000004', '2017-03-28 19:09:17', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '928', '0000000034', '2017-03-28 19:09:31', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '929', '0000000034', '2017-03-28 19:09:52', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '930', '0000000034', '2017-03-28 19:09:58', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '931', '0000000004', '2017-03-28 19:13:12', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '932', '0000000004', '2017-03-28 19:13:12', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '933', '0000000004', '2017-03-28 19:13:12', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '934', '0000000004', '2017-03-28 19:13:12', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '935', '0000000034', '2017-03-28 19:13:17', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '936', '0000000004', '2017-03-28 19:27:41', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '937', '0000000004', '2017-03-28 19:27:41', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '938', '0000000004', '2017-03-28 19:27:41', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '939', '0000000004', '2017-03-28 19:27:41', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '940', '0000000004', '2017-03-28 19:27:41', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '941', '0000000004', '2017-03-28 19:27:41', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '942', '0000000004', '2017-03-28 19:27:41', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '943', '0000000004', '2017-03-28 19:27:41', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '944', '0000000004', '2017-03-28 19:27:41', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '945', '0000000004', '2017-03-28 19:27:41', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '946', '0000000034', '2017-03-28 19:27:42', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '947', '0000000004', '2017-03-28 19:29:42', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '948', '0000000004', '2017-03-28 19:29:42', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '949', '0000000004', '2017-03-28 19:29:42', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '950', '0000000004', '2017-03-28 19:29:42', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '951', '0000000034', '2017-03-28 19:29:43', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '952', '0000000004', '2017-03-28 19:35:48', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '953', '0000000004', '2017-03-28 19:35:48', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '954', '0000000004', '2017-03-28 19:35:48', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '955', '0000000004', '2017-03-28 19:35:48', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '956', '0000000004', '2017-03-28 19:35:48', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '957', '0000000004', '2017-03-28 19:35:48', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '958', '0000000004', '2017-03-28 19:35:48', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '959', '0000000034', '2017-03-28 19:35:50', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '960', '0000000004', '2017-03-28 19:36:48', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '961', '0000000004', '2017-03-28 19:36:49', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '962', '0000000034', '2017-03-28 19:36:50', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '963', '0000000034', '2017-03-28 19:36:50', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '964', '0000000004', '2017-03-28 19:36:50', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '965', '0000000004', '2017-03-28 19:36:50', '67');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '12啊', '966', '0000000011', '2017-03-28 19:40:30', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '967', '0000000004', '2017-03-28 19:59:47', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '968', '0000000004', '2017-03-28 19:59:48', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '969', '0000000004', '2017-03-28 19:59:51', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '970', '0000000004', '2017-03-28 19:59:52', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '971', '0000000034', '2017-03-28 20:00:38', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '972', '0000000004', '2017-03-28 20:00:48', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '973', '0000000004', '2017-03-28 20:00:48', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '974', '0000000004', '2017-03-28 20:00:51', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '975', '0000000004', '2017-03-28 20:00:52', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '976', '0000000034', '2017-03-28 20:01:38', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '977', '0000000004', '2017-03-28 20:01:52', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '978', '0000000004', '2017-03-28 20:01:52', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '979', '0000000004', '2017-03-28 20:01:52', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '980', '0000000034', '2017-03-28 20:02:46', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '981', '0000000004', '2017-03-28 20:02:52', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '982', '0000000004', '2017-03-28 20:02:53', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '983', '0000000004', '2017-03-28 20:02:58', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '984', '0000000034', '2017-03-28 20:03:48', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '985', '0000000004', '2017-03-28 20:03:53', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '986', '0000000004', '2017-03-28 20:03:53', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '987', '0000000004', '2017-03-28 20:03:59', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '988', '0000000034', '2017-03-28 20:04:48', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '989', '0000000004', '2017-03-28 20:04:53', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '990', '0000000004', '2017-03-28 20:04:54', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '991', '0000000004', '2017-03-28 20:04:59', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '992', '0000000034', '2017-03-28 20:05:48', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '993', '0000000004', '2017-03-28 20:05:53', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '994', '0000000004', '2017-03-28 20:05:54', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '995', '0000000004', '2017-03-28 20:06:01', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '996', '0000000034', '2017-03-28 20:06:48', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '997', '0000000004', '2017-03-28 20:06:54', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '998', '0000000004', '2017-03-28 20:06:57', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '999', '0000000004', '2017-03-28 20:07:04', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1000', '0000000034', '2017-03-28 20:07:51', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1001', '0000000004', '2017-03-28 20:08:03', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1002', '0000000004', '2017-03-28 20:08:03', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1003', '0000000004', '2017-03-28 20:08:09', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1004', '0000000004', '2017-03-28 20:19:36', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1005', '0000000004', '2017-03-28 20:19:36', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1006', '0000000004', '2017-03-28 20:19:37', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1007', '0000000004', '2017-03-28 20:19:38', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1008', '0000000034', '2017-03-28 20:19:55', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1009', '0000000004', '2017-03-28 20:20:37', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1010', '0000000004', '2017-03-28 20:20:38', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1011', '0000000004', '2017-03-28 20:20:38', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1012', '0000000034', '2017-03-28 20:20:55', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1013', '0000000004', '2017-03-28 20:21:37', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1014', '0000000004', '2017-03-28 20:21:38', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1015', '0000000004', '2017-03-28 20:21:38', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1016', '0000000034', '2017-03-28 20:21:55', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1017', '0000000004', '2017-03-28 20:22:38', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1018', '0000000004', '2017-03-28 20:22:40', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1019', '0000000004', '2017-03-28 20:22:40', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1020', '0000000034', '2017-03-28 20:22:55', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1021', '0000000004', '2017-03-28 20:23:39', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1022', '0000000004', '2017-03-28 20:23:40', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1023', '0000000004', '2017-03-28 20:23:41', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1024', '0000000034', '2017-03-28 20:23:56', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1025', '0000000004', '2017-03-28 20:24:41', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1026', '0000000004', '2017-03-28 20:24:41', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1027', '0000000004', '2017-03-28 20:24:41', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1028', '0000000004', '2017-03-28 20:27:27', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1029', '0000000034', '2017-03-28 20:27:28', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1030', '0000000004', '2017-03-28 20:48:32', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1031', '0000000004', '2017-03-28 20:48:32', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1032', '0000000004', '2017-03-28 20:48:33', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1033', '0000000004', '2017-03-28 20:48:36', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1034', '0000000034', '2017-03-28 20:48:53', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1035', '0000000004', '2017-03-28 20:49:32', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1036', '0000000004', '2017-03-28 20:49:36', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1037', '0000000004', '2017-03-28 20:49:37', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1038', '0000000034', '2017-03-28 20:49:56', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1039', '0000000004', '2017-03-28 20:53:28', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1040', '0000000004', '2017-03-28 20:53:28', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1041', '0000000004', '2017-03-28 20:53:29', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1042', '0000000004', '2017-03-28 20:53:30', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1043', '0000000034', '2017-03-28 20:53:45', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1044', '0000000004', '2017-03-28 20:54:32', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1045', '0000000004', '2017-03-28 20:54:33', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1046', '0000000004', '2017-03-28 20:54:33', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1047', '0000000004', '2017-03-28 20:54:33', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1048', '0000000034', '2017-03-28 20:54:48', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1049', '0000000004', '2017-03-28 20:58:56', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1050', '0000000004', '2017-03-28 20:58:57', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1051', '0000000004', '2017-03-28 20:58:57', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1052', '0000000004', '2017-03-28 20:58:57', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1053', '0000000004', '2017-03-28 20:58:58', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1054', '0000000034', '2017-03-28 20:59:18', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1055', '0000000004', '2017-03-28 21:01:03', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1056', '0000000004', '2017-03-28 21:01:03', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1057', '0000000004', '2017-03-28 21:01:06', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1058', '0000000004', '2017-03-28 21:01:06', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1059', '0000000034', '2017-03-28 21:01:23', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1060', '0000000004', '2017-03-28 21:02:04', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1061', '0000000004', '2017-03-28 21:02:06', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1062', '0000000004', '2017-03-28 21:02:06', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1063', '0000000034', '2017-03-28 21:02:23', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1064', '0000000034', '2017-03-28 21:02:23', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1065', '0000000004', '2017-03-28 21:03:07', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1066', '0000000004', '2017-03-28 21:03:07', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1067', '0000000004', '2017-03-28 21:03:07', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1068', '0000000004', '2017-03-28 21:04:53', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1069', '0000000004', '2017-03-28 21:04:53', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1070', '0000000004', '2017-03-28 21:04:53', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1071', '0000000034', '2017-03-28 21:04:53', '1065');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '1072', '0000000004', '2017-03-28 21:07:37', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '寻物', '1073', '0000000032', '2017-03-28 21:07:56', '1015');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '寻物', '1074', '0000000032', '2017-03-28 21:16:06', '1015');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1075', '0000000004', '2017-03-28 21:44:23', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1076', '0000000004', '2017-03-28 21:44:24', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1077', '0000000004', '2017-03-28 21:44:26', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1078', '0000000004', '2017-03-28 21:44:26', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1079', '0000000004', '2017-03-28 21:44:28', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1080', '0000000034', '2017-03-28 21:45:00', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1081', '0000000004', '2017-03-28 21:45:24', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1082', '0000000004', '2017-03-28 21:45:26', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1083', '0000000004', '2017-03-28 21:45:28', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1084', '0000000034', '2017-03-28 21:46:01', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1085', '0000000004', '2017-03-28 21:46:25', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1086', '0000000004', '2017-03-28 21:46:26', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1087', '0000000004', '2017-03-28 21:46:32', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1088', '0000000004', '2017-03-28 21:47:29', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1089', '0000000004', '2017-03-28 21:47:29', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1090', '0000000034', '2017-03-28 21:47:29', '1065');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆八中总栏', '1091', '0000000014', '2017-03-29 13:57:01', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '幸福小区', '1092', '0000000022', '2017-03-29 13:57:25', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '寻物', '1093', '0000000032', '2017-03-29 13:57:39', '1015');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1094', '0000000004', '2017-03-29 19:09:04', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1095', '0000000004', '2017-03-29 19:09:05', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1096', '0000000004', '2017-03-29 19:09:06', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1097', '0000000004', '2017-03-29 19:09:06', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1098', '0000000034', '2017-03-29 19:09:40', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1099', '0000000004', '2017-03-29 19:10:05', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1100', '0000000004', '2017-03-29 19:10:06', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1101', '0000000004', '2017-03-29 19:10:07', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1102', '0000000034', '2017-03-29 19:10:56', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1103', '0000000004', '2017-03-29 19:11:08', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1104', '0000000004', '2017-03-29 19:11:08', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1105', '0000000004', '2017-03-29 19:11:08', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1106', '0000000004', '2017-03-29 19:12:31', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1107', '0000000004', '2017-03-29 19:12:31', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1108', '0000000004', '2017-03-29 19:12:47', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1109', '0000000004', '2017-03-29 19:12:48', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1110', '0000000004', '2017-03-29 19:12:51', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1111', '0000000034', '2017-03-29 19:13:16', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1112', '0000000004', '2017-03-29 19:15:20', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1113', '0000000004', '2017-03-29 19:15:20', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1114', '0000000004', '2017-03-29 19:15:23', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1115', '0000000004', '2017-03-29 19:15:25', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1116', '0000000004', '2017-03-29 19:15:27', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1117', '0000000034', '2017-03-29 19:16:02', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1118', '0000000004', '2017-03-29 19:16:23', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1119', '0000000004', '2017-03-29 19:16:25', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1120', '0000000004', '2017-03-29 19:16:27', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1121', '0000000034', '2017-03-29 19:17:02', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1122', '0000000004', '2017-03-29 19:17:23', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1123', '0000000004', '2017-03-29 19:17:25', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1124', '0000000004', '2017-03-29 19:17:27', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1125', '0000000004', '2017-03-29 19:19:04', '0');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1126', '0000000004', '2017-03-29 19:19:05', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1127', '0000000004', '2017-03-29 19:19:06', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1128', '0000000004', '2017-03-29 19:19:07', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1129', '0000000034', '2017-03-29 19:19:38', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1130', '0000000004', '2017-03-29 19:20:05', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1131', '0000000004', '2017-03-29 19:20:06', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1132', '0000000004', '2017-03-29 19:20:08', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1133', '0000000034', '2017-03-29 19:20:39', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1134', '0000000004', '2017-03-29 19:21:05', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1135', '0000000004', '2017-03-29 19:21:06', '59');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1136', '0000000004', '2017-03-29 19:21:09', '67');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '寻猫', '1137', '0000000034', '2017-03-29 19:21:39', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1138', '0000000004', '2017-03-29 19:22:06', '75');
INSERT INTO `visitorlog` VALUES ('172.22.193.167', '明主湖', '1139', '0000000004', '2017-03-29 19:22:06', '59');
INSERT INTO `visitorlog` VALUES ('172.22.110.180', '寻物', '1140', '0000000032', '2017-03-29 21:39:40', '1015');
INSERT INTO `visitorlog` VALUES ('172.22.110.180', '明主湖', '1141', '0000000004', '2017-03-29 21:39:58', '0');
INSERT INTO `visitorlog` VALUES ('172.22.110.180', '明主湖', '1142', '0000000004', '2017-03-29 21:40:02', '75');
INSERT INTO `visitorlog` VALUES ('172.22.110.180', '明主湖', '1143', '0000000004', '2017-03-29 21:40:11', '59');
INSERT INTO `visitorlog` VALUES ('172.22.110.180', '12啊', '1144', '0000000011', '2017-03-29 21:46:54', '0');
INSERT INTO `visitorlog` VALUES ('172.22.110.180', '红花小学', '1145', '0000000016', '2017-03-29 21:47:14', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '重庆八中总栏', '1146', '0000000014', '2017-03-31 19:59:53', '0');
INSERT INTO `visitorlog` VALUES ('0:0:0:0:0:0:0:1', '明主湖', '1147', '0000000004', '2017-04-04 22:22:18', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆八中总栏', '1148', '0000000014', '2017-04-05 16:38:45', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1149', '0000000004', '2017-04-10 21:16:06', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1150', '0000000004', '2017-04-10 21:16:31', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1151', '0000000034', '2017-04-10 21:19:14', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1152', '0000000004', '2017-04-10 21:22:13', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1153', '0000000004', '2017-04-10 21:22:14', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1154', '0000000034', '2017-04-10 21:22:14', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1155', '0000000004', '2017-04-10 21:23:14', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1156', '0000000004', '2017-04-10 21:23:14', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1157', '0000000034', '2017-04-10 21:23:14', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1158', '0000000004', '2017-04-10 21:24:23', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1159', '0000000004', '2017-04-10 21:24:23', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1160', '0000000034', '2017-04-10 21:24:24', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1161', '0000000004', '2017-04-10 21:26:06', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1162', '0000000004', '2017-04-10 21:26:07', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1163', '0000000034', '2017-04-10 21:26:07', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1164', '0000000004', '2017-04-10 21:28:04', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1165', '0000000004', '2017-04-10 21:28:05', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1166', '0000000034', '2017-04-10 21:28:14', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1167', '0000000004', '2017-04-10 21:29:05', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1168', '0000000034', '2017-04-10 21:29:14', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1169', '0000000034', '2017-04-10 21:29:14', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1170', '0000000004', '2017-04-10 21:30:07', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1171', '0000000034', '2017-04-10 21:30:24', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1172', '0000000004', '2017-04-10 21:31:59', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1173', '0000000004', '2017-04-10 21:32:00', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1174', '0000000034', '2017-04-10 21:32:11', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1175', '0000000004', '2017-04-10 21:33:00', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1176', '0000000004', '2017-04-10 21:33:00', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1177', '0000000034', '2017-04-10 21:33:11', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1178', '0000000034', '2017-04-10 21:33:11', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1179', '0000000004', '2017-04-10 21:34:07', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1180', '0000000004', '2017-04-10 21:34:07', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1181', '0000000034', '2017-04-10 21:34:12', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1182', '0000000004', '2017-04-10 21:36:38', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1183', '0000000004', '2017-04-10 21:36:39', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1184', '0000000034', '2017-04-10 21:36:40', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1185', '0000000004', '2017-04-11 17:47:10', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1186', '0000000004', '2017-04-11 17:47:10', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1187', '0000000004', '2017-04-11 17:47:12', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1188', '0000000034', '2017-04-11 17:47:25', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1189', '0000000004', '2017-04-11 17:48:12', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1190', '0000000034', '2017-04-11 17:48:26', '1065');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1191', '0000000004', '2017-04-11 17:49:13', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1192', '0000000004', '2017-04-11 17:49:13', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻猫', '1193', '0000000034', '2017-04-11 17:49:47', '1065');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆八中总栏', '1194', '0000000014', '2017-04-12 01:29:24', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '幸福小区', '1195', '0000000022', '2017-04-12 15:22:34', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '明主湖', '1196', '0000000004', '2017-04-12 15:22:48', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '北京大道', '1197', '0000000033', '2017-04-12 15:26:07', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '永辉超市', '1198', '0000000035', '2017-04-12 15:27:51', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '永辉超市', '1199', '0000000035', '2017-04-12 16:23:28', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1200', '0000000036', '2017-04-12 16:23:32', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '磁器口古镇', '1201', '0000000037', '2017-04-12 16:23:36', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1202', '0000000036', '2017-04-12 17:00:14', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1203', '0000000036', '2017-04-12 17:54:01', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1204', '0000000036', '2017-04-12 18:00:46', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1205', '0000000036', '2017-04-12 18:05:08', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1206', '0000000036', '2017-04-12 18:06:22', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1207', '0000000036', '2017-04-12 18:06:36', '1625');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1208', '0000000036', '2017-04-12 18:28:00', '1625');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1209', '0000000036', '2017-04-12 18:34:14', '1625');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1210', '0000000036', '2017-04-12 18:34:33', '1615');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1211', '0000000036', '2017-04-12 18:35:39', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1212', '0000000036', '2017-04-12 18:36:44', '1615');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1213', '0000000036', '2017-04-12 18:39:05', '1615');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1214', '0000000036', '2017-04-12 18:39:05', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1215', '0000000036', '2017-04-12 18:41:08', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1216', '0000000036', '2017-04-12 18:41:12', '1615');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1217', '0000000036', '2017-04-12 18:46:24', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1218', '0000000036', '2017-04-12 18:52:45', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆八中总栏', '1219', '0000000014', '2017-04-12 18:52:53', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆一中总栏', '1220', '0000000015', '2017-04-12 18:53:21', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1221', '0000000036', '2017-04-12 18:54:06', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1222', '0000000036', '2017-04-12 18:55:09', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆一中总栏', '1223', '0000000015', '2017-04-12 18:58:00', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '永辉超市', '1224', '0000000035', '2017-04-12 18:58:06', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '永辉超市', '1225', '0000000035', '2017-04-12 18:59:34', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '永辉超市', '1226', '0000000035', '2017-04-12 19:01:50', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1227', '0000000004', '2017-04-12 19:10:01', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1228', '0000000004', '2017-04-12 19:10:06', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻物', '1229', '0000000032', '2017-04-12 19:11:03', '1085');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '寻物', '1230', '0000000032', '2017-04-12 19:11:25', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1231', '0000000004', '2017-04-12 19:13:07', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1232', '0000000004', '2017-04-12 19:13:07', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻物', '1233', '0000000032', '2017-04-12 19:13:15', '1085');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1234', '0000000004', '2017-04-12 19:14:09', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻物', '1235', '0000000032', '2017-04-12 19:14:15', '1085');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1236', '0000000004', '2017-04-12 19:19:48', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1237', '0000000004', '2017-04-12 19:19:48', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1238', '0000000004', '2017-04-12 19:19:48', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1239', '0000000004', '2017-04-12 19:19:48', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻物', '1240', '0000000032', '2017-04-12 19:20:07', '1085');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1241', '0000000004', '2017-04-12 19:20:48', '75');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '寻物', '1242', '0000000032', '2017-04-12 19:21:07', '1085');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1243', '0000000004', '2017-04-12 19:21:50', '0');
INSERT INTO `visitorlog` VALUES ('172.22.113.146', '明主湖', '1244', '0000000004', '2017-04-12 19:21:50', '75');
INSERT INTO `visitorlog` VALUES ('172.22.59.216', '三峡广场', '1245', '0000000036', '2017-04-12 21:13:10', '0');
INSERT INTO `visitorlog` VALUES ('172.22.59.216', '三峡广场', '1246', '0000000036', '2017-04-12 21:17:26', '0');
INSERT INTO `visitorlog` VALUES ('172.22.59.216', '三峡广场', '1247', '0000000036', '2017-04-12 21:22:12', '1665');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆八中总栏', '1248', '0000000014', '2017-04-17 19:35:14', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '重庆一中总栏', '1249', '0000000015', '2017-04-17 19:35:19', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1250', '0000000036', '2017-04-17 19:35:27', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1251', '0000000036', '2017-04-17 19:39:20', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1252', '0000000036', '2017-04-17 19:40:24', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '永辉超市', '1253', '0000000035', '2017-04-17 19:41:00', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '永辉超市', '1254', '0000000035', '2017-04-17 19:42:03', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '永辉超市', '1255', '0000000035', '2017-04-17 19:45:22', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1256', '0000000036', '2017-04-17 19:46:14', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1257', '0000000036', '2017-04-18 13:56:54', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '三峡广场', '1258', '0000000036', '2017-04-18 14:06:36', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '粘贴栏测试', '1259', '0000000038', '2017-04-21 21:32:58', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '粘贴栏测试', '1260', '0000000038', '2017-04-21 21:35:12', '0');
INSERT INTO `visitorlog` VALUES ('172.20.52.108', '粘贴栏测试', '1261', '0000000038', '2017-04-21 21:35:16', '1695');
