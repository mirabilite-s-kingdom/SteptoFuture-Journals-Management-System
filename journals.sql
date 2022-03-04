/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : books

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 20/12/2021 16:05:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 1,
  `lend_num` int(11) NULL DEFAULT NULL,
  `max_num` int(11) NULL DEFAULT NULL,
  `balance` double(255, 2) NULL DEFAULT 0.00,
  `isVIP` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`aid`, `username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10012 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (10000, 'admin', '管理员', 'admin', '972014123@qq.com', '13389447000', 0, 2, NULL, NULL, 61.00, 1);
INSERT INTO `admin` VALUES (10001, 'user', '王一', 'user', '642492123@qq.com', '13639349000', 43, 1, 3, 5, 97.30, 0);
INSERT INTO `admin` VALUES (10002, 'u2', '吴一', '123', '1667942357@qq.com', '17361643257', 4, 1, 10, 10, 58.40, 1);
INSERT INTO `admin` VALUES (10003, '1816270151', '杨一', 'yy123456', '1068457627@qq.com', '17294286187', 2, 1, 30, 5, 60.23, 1);
INSERT INTO `admin` VALUES (10004, '1816270152', '高一', 'gjx123456', '6485113975@qq.com', '17294286188', 1, 1, 30, 5, 60.00, 1);
INSERT INTO `admin` VALUES (10005, '101', '管理员一号', '1011', '1068457627@qq.com', '13625694675', 0, 2, NULL, NULL, 60.00, 1);
INSERT INTO `admin` VALUES (10006, '1816270153', '张一', 'zll123456', '1068457628@qq.com', '13625694681', 0, 1, 30, 5, 60.00, 1);
INSERT INTO `admin` VALUES (10007, '1816270154', '辛一', 'xy123456', '1068457629@qq.com', '13625694682', 0, 1, 30, 5, 60.00, 0);
INSERT INTO `admin` VALUES (10008, '102', '管理2', '102', '333@qq.com', '135665565', 0, 2, NULL, NULL, 60.00, 0);
INSERT INTO `admin` VALUES (10009, '1', '1', '1', '1', '13639349000', 0, 1, 1, 1, 0.00, 0);
INSERT INTO `admin` VALUES (10010, 'q', 'ww', '123123', '327420482@qq.com', '15060338989', 0, 1, 30, 5, 0.00, 0);
INSERT INTO `admin` VALUES (10011, 'q', '1', '123', '111', '1', 0, 1, 233, 3, 0.00, 0);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(205) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card` char(205) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autho` char(205) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `press` char(205) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` int(11) NULL DEFAULT 0,
  `bookPrice` float(10, 2) NULL DEFAULT NULL,
  `borrowPrice` float(10, 2) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT 1,
  `overduePrice` float(10, 2) NULL DEFAULT NULL,
  `autho2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `colunm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2000016 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (2000001, '强化计算思维培养的“软件开发技术”课程改革', 'TP311.55', '李建秋', '同济大学', '001软件期刊', 17, 10.20, 1.00, 0, 1.00, '刘秋实', '强化计算思维培养的“软件开发技术”课程改革', '2019', '12', '12', '软件开发', '思维', '培养', '计算机', '编程');
INSERT INTO `book` VALUES (2000002, '基于角色的IMA平台应用软件开发与集成技术', 'TP311.50', '西北工业大学', '西北工业大学', '002硬件期刊', 10, 10.00, 2.00, 1, 1.00, '鲁美', '航空电子系统经历了独立式、联合试阶段,发展为当今的综合化（IMA）阶段,在完成各子系统大综合的同时也极大地提升了系统的复杂性。这种复杂性对软硬件的配置、开发和集成都带来了极大的挑战,传统的方法和技术难以胜任。参考DO-297等相关标准,从参与者的角度对IMA系统的开发和集成角色进行了划分,并对各类角色的工作流程进行了分析,给出了工具能力的定义,为IMA系统的开发与集成梳理了一套可行的方案。 ', '2019', '67', '27', '平台构建', '开发', '编程', '计算机', NULL);
INSERT INTO `book` VALUES (2000003, '分层技术在计算机软件开发中的应用', 'TP311.52', '软件开发中心', '中国电科网络通信研究院', '001软件期刊', 5, 10.00, 1.00, 0, 1.00, '刘青', '不断地提高学生解决复杂工程问题的能力是本科工程教育的基本定位。文章针对计算机专业基础课教学存在知识横向封装、教师\"满堂灌\"、学生实践能力不足等问题,以计算机学科竞赛ACM-ICPC为抓手,提出以\"计算机问题解决\"为主线、以赛促改,以学生为中心、以赛促教,兼顾整体培养与个性实训、以赛促学的方法,培养学生的计算思维和创新能力,提高实践能力和动手能力。 ', '2019', '6', '24', '分层技术', '分布式', '架构', '设计模式', NULL);
INSERT INTO `book` VALUES (2000004, '计算机软件数据接口的几种方法应用', 'TP311.51', '傅志浩', '海南软件职业技术学院软件工程学院', '001软件期刊', 4, 10.00, 1.00, 1, 1.00, '叶曼', '随着数字化时代的到来,企业的信息化建设越来越频繁,大多都开始重视数据中心发展。不过,不少企业在建设信息化平台之时对于信息的安全管理重视力度不够,尽管信息化使得企业运营更加高效,却也提升了相应的风险。因此,安全的信息管理体系变得非常重要。计算机信息技术的迅猛发展使得社会各行业都在大量使用计算机软件,而计算机软件的设计开发公司很多,因而其数据结构也各不一样,这使得用户使用的软件要事先留很多数据结构,既加大了工作量更多了,又增加了软件使用时出现问题。故而对计算机软件数据接口进行深入研究,具有重要的现实意义。 ', '2019', '4', '3', '接口', '设计', '适配模式', '开发', NULL);
INSERT INTO `book` VALUES (2000005, '基于Microstation平台的水利水电工程三维开挖设计软件开发与应用', 'TP311.53', '吕彬', '中水珠江规划勘测设计有限公司', '003工程应用', 4, 10.00, 1.00, 1, 1.00, '蒋成刚', '阐述计算机软件的数据接口,基本设计应用的原则,几种应用模式和实现效果的策略,包括应用程序接口函数模式、文件交换模式、中间数据库模式', '2019', '65', '23', '算法', 'AI', '超级芯片', NULL, NULL);
INSERT INTO `book` VALUES (2000006, 'FPSO立管平台简化疲劳分析及软件开发', 'TP311.54', '刘明', '中国电力出版社', '001软件期刊', 2, 10.00, 1.00, 1, 1.00, '刘志', '	网络软件工程技术的发展研究', '2019', '5', '5', '平台', '软件', '应用', '架构', '');
INSERT INTO `book` VALUES (2000007, '	计算机软件开发的数据库测试技术研究', 'TP311.55', '董海超', '电子世界', '001软件期刊', 4, 7.00, 1.00, 0, 1.00, '赵雷', '	网络软件工程技术的发展研究', '2019', '4', '5', '开发', '应用', '网络', '技术', '信息化');
INSERT INTO `book` VALUES (2000011, '	信息安全环境下计算机软件开发', 'TP311.56', '许海楠', '电子世界', '001软件期刊', 13, 10.20, 1.00, 0, 1.00, '广青', '	网络软件工程技术的发展研究', '2019', '5', '53', '信息安全', '网络安全', '网络对抗', NULL, NULL);
INSERT INTO `book` VALUES (2000012, '	网络软件工程技术的发展研究', 'TP311.57', '王明珠', '电子世界', '001软件期刊', 3, 4.00, 1.00, 1, 1.00, '宁西', '为了提高船舶航迹预测的精准度和稳定性,提出一种基于差分自回归移动平均模型和双向循环神经网络的组合预测方法,利用ARIMA模型对航迹进行初步预测,再通过注意力机制优化BIGRU神经网络,对残差序列进行矫正,以船舶经度、纬度、航速、航向、船舶类型作为输入,经度、纬度作为输出,构建船舶航迹预测模型。实验结果表明,该种预测方法的均方误差、平均绝对误差、均方根误差均较小,能够比较准确地预测出船舶航迹。 ', '2019', '2', '1', '软件技术', '信息化', '软件处理', '大数据', NULL);
INSERT INTO `book` VALUES (2000015, '1', '1', '1', '1', '001软件期刊', 0, 1.00, 1.00, 1, 1.00, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3005 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES (3001, '001软件期刊');
INSERT INTO `booktype` VALUES (3002, '002硬件期刊');
INSERT INTO `booktype` VALUES (3003, '003工程应用');
INSERT INTO `booktype` VALUES (3004, '004软件工程');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NULL DEFAULT NULL,
  `bid` int(11) NULL DEFAULT NULL,
  `card` int(11) NULL DEFAULT NULL,
  `bookname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begintime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `yuqiPrice` double(10, 2) NULL DEFAULT 0.00,
  `yuqiNum` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 400051 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (400001, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', '1816270150', '王一', '2020-4-25', '2020-4-27', 0, 0.00, 0);
INSERT INTO `history` VALUES (400002, 10002, 2000002, 3003001, '基于角色的IMA平台应用软件开发与集成技术', '1507550139', '吴一', '2020-4-26', '2020-4-28', 0, 0.00, 0);
INSERT INTO `history` VALUES (400003, 10003, 2000003, 3002001, '分层技术在计算机软件开发中的应用', '1816270151', '杨一', '2020-4-27', '2020-5-4', 0, 0.00, 0);
INSERT INTO `history` VALUES (400004, 10001, 2000002, 3003001, '基于角色的IMA平台应用软件开发与集成技术', '1816270150', '王一', '2020-4-27', '2021-3-5', 0, 0.00, 0);
INSERT INTO `history` VALUES (400005, 10001, 2000003, 3002001, '分层技术在计算机软件开发中的应用', '1816270150', '王一', '2020-4-27', '2021-3-7', 0, 0.00, 0);
INSERT INTO `history` VALUES (400006, 10002, 2000004, 3004001, '计算机软件数据接口的几种方法应用', '1507550139', '吴一', '2020-4-28', '2020-5-2', 1, 0.00, 0);
INSERT INTO `history` VALUES (400007, 10004, 2000004, 3004001, '计算机软件数据接口的几种方法应用', '1816270152', '高一', '2020-4-29', '2020-5-29', 1, 0.00, 0);
INSERT INTO `history` VALUES (400008, 10003, 2000005, 3004002, '基于Microstation平台的水利水电工程三维开挖设计软件开发与应用', '1816270151', '杨一', '2020-4-29', '2020-5-29', 1, 0.00, 0);
INSERT INTO `history` VALUES (400009, 10001, 2000006, 3001002, '基于角色的IMA平台应用软件开发与集成技术', '1816270150', '王怡泽', '2020-4-29', '2020-5-1', 1, 0.00, 0);
INSERT INTO `history` VALUES (400020, 10001, 2000003, 3002001, '分层技术在计算机软件开发中的应用', 'u1', '王一', '2021-3-5', '2021-3-6', 1, 0.00, 0);
INSERT INTO `history` VALUES (400021, 10001, 2000006, 3001002, '基于角色的IMA平台应用软件开发与集成技术', 'u1', '王一', '2021-3-6', '2021-3-25', 0, 7.00, 7);
INSERT INTO `history` VALUES (400022, 10001, 2000007, 1, '	网络软件工程技术的发展研究', 'u1', '王一', '2021-3-6', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400023, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-6', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400024, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-6', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400025, 10001, 2000002, 3003001, '基于角色的IMA平台应用软件开发与集成技术', 'u1', '王一', '2021-3-6', '2021-3-7', 1, 0.00, 0);
INSERT INTO `history` VALUES (400026, 10001, 2000002, 3003001, '基于角色的IMA平台应用软件开发与集成技术', 'u1', '王一', '2021-3-6', '2021-3-7', 1, 0.00, 0);
INSERT INTO `history` VALUES (400027, 10001, 2000005, 3004002, '基于Microstation平台的水利水电工程三维开挖设计软件开发与应用', 'u1', '王一', '2021-3-6', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400028, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-6', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400029, 10001, 2000002, 3003001, '基于角色的IMA平台应用软件开发与集成技术', 'u1', '王一', '2021-3-6', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400030, 10001, 2000003, 3002001, '分层技术在计算机软件开发中的应用', 'u1', '王一', '2021-3-6', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400031, 10001, 2000004, 3004001, '计算机软件数据接口的几种方法应用', 'u1', '王一', '2021-3-6', '2021-4-6', 1, 0.00, 0);
INSERT INTO `history` VALUES (400032, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-6', '2021-4-6', 1, 0.00, 0);
INSERT INTO `history` VALUES (400033, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-6', '2021-4-6', 1, 0.00, 0);
INSERT INTO `history` VALUES (400034, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-6', '2021-4-6', 1, 0.00, 0);
INSERT INTO `history` VALUES (400035, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-6', '2021-4-6', 1, 0.00, 0);
INSERT INTO `history` VALUES (400036, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-7', '2021-4-7', 1, 0.00, 0);
INSERT INTO `history` VALUES (400037, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-7', '2021-4-7', 1, 0.00, 0);
INSERT INTO `history` VALUES (400038, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-7', '2021-4-7', 1, 0.00, 0);
INSERT INTO `history` VALUES (400039, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-7', '2021-4-7', 1, 0.00, 0);
INSERT INTO `history` VALUES (400040, 10001, 2000002, 3003001, '基于角色的IMA平台应用软件开发与集成技术', 'u1', '王一', '2021-3-7', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400041, 10001, 2000002, 3003001, '基于角色的IMA平台应用软件开发与集成技术', 'u1', '王一', '2021-3-11', '2021-3-18', 0, 1.00, 1);
INSERT INTO `history` VALUES (400042, 10001, 2000012, 4, '	网络软件工程技术的发展研究', 'u1', '王一', '2021-3-11', '2021-4-11', 1, 0.00, 0);
INSERT INTO `history` VALUES (400043, 10001, 2000007, 1, '	网络软件工程技术的发展研究', 'u1', '王一', '2021-12-12', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400044, 10001, 2000012, 4, '	网络软件工程技术的发展研究', 'u1', '王一', '2021-3-12', '2021-3-18', 1, 0.00, 0);
INSERT INTO `history` VALUES (400045, 10002, 2000012, 4, '	网络软件工程技术的发展研究', 'u2', '吴一', '2021-3-12', '2021-04-11', 1, 0.00, 0);
INSERT INTO `history` VALUES (400046, 10002, 2000007, 1, '	网络软件工程技术的发展研究', 'u2', '吴一', '2021-3-12', '2021-03-22', 1, 0.00, 0);
INSERT INTO `history` VALUES (400047, 10001, 2000007, 1, '	网络软件工程技术的发展研究', 'u1', '王一', '2021-3-25', '2021-03-28', 1, 0.00, 0);
INSERT INTO `history` VALUES (400048, 10001, 2000001, 3001001, '强化计算思维培养的“软件开发技术”课程改革', 'u1', '王一', '2021-3-25', '2021-03-28', 1, 0.00, 0);
INSERT INTO `history` VALUES (400049, 10001, 2000011, 3001011, '	信息安全环境下计算机软件开发', 'u1', '王一', '2021-3-25', '2021-03-28', 1, 0.00, 0);
INSERT INTO `history` VALUES (400050, 10001, 2000003, 3002001, '分层技术在计算机软件开发中的应用', 'u1', '王一', '2021-3-25', '2021-03-28', 1, 0.00, 0);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (4, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-06 00:14:53');
INSERT INTO `log` VALUES (5, '用户名为{102}，姓名为{管理2}的用户登录成功!', '2021-03-06 00:20:41');
INSERT INTO `log` VALUES (6, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 10:11:08');
INSERT INTO `log` VALUES (7, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 10:23:28');
INSERT INTO `log` VALUES (8, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 10:24:52');
INSERT INTO `log` VALUES (9, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 10:27:58');
INSERT INTO `log` VALUES (10, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-06 10:30:40');
INSERT INTO `log` VALUES (11, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 11:48:08');
INSERT INTO `log` VALUES (12, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-06 21:22:41');
INSERT INTO `log` VALUES (13, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 21:27:05');
INSERT INTO `log` VALUES (14, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 22:35:37');
INSERT INTO `log` VALUES (15, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 22:37:04');
INSERT INTO `log` VALUES (16, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 22:37:40');
INSERT INTO `log` VALUES (17, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-06 22:59:45');
INSERT INTO `log` VALUES (18, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-06 23:41:57');
INSERT INTO `log` VALUES (19, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-07 00:06:35');
INSERT INTO `log` VALUES (20, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-07 00:22:50');
INSERT INTO `log` VALUES (21, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-07 00:25:32');
INSERT INTO `log` VALUES (22, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-07 01:22:35');
INSERT INTO `log` VALUES (23, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-07 01:32:12');
INSERT INTO `log` VALUES (24, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-08 10:31:08');
INSERT INTO `log` VALUES (25, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-10 21:24:40');
INSERT INTO `log` VALUES (26, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-10 21:33:17');
INSERT INTO `log` VALUES (27, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-11 20:33:42');
INSERT INTO `log` VALUES (28, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-11 20:38:07');
INSERT INTO `log` VALUES (29, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-11 21:08:31');
INSERT INTO `log` VALUES (30, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-11 23:37:22');
INSERT INTO `log` VALUES (31, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-11 23:44:26');
INSERT INTO `log` VALUES (32, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-11 23:52:17');
INSERT INTO `log` VALUES (33, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-11 23:53:34');
INSERT INTO `log` VALUES (34, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-12-12 00:01:58');
INSERT INTO `log` VALUES (35, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-12 00:23:23');
INSERT INTO `log` VALUES (36, '用户名为{u2}，姓名为{吴一}的用户登录成功!', '2021-03-12 00:24:50');
INSERT INTO `log` VALUES (37, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-12 02:01:12');
INSERT INTO `log` VALUES (38, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-12 02:08:05');
INSERT INTO `log` VALUES (39, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-12 02:16:54');
INSERT INTO `log` VALUES (40, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-13 01:10:42');
INSERT INTO `log` VALUES (41, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-17 23:37:29');
INSERT INTO `log` VALUES (42, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-17 23:38:41');
INSERT INTO `log` VALUES (43, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-18 00:37:53');
INSERT INTO `log` VALUES (44, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-18 02:07:20');
INSERT INTO `log` VALUES (45, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-18 02:11:15');
INSERT INTO `log` VALUES (46, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-18 03:07:19');
INSERT INTO `log` VALUES (47, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-23 15:26:45');
INSERT INTO `log` VALUES (48, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-23 21:32:04');
INSERT INTO `log` VALUES (49, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-23 21:59:31');
INSERT INTO `log` VALUES (50, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-23 22:36:46');
INSERT INTO `log` VALUES (51, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-23 22:37:02');
INSERT INTO `log` VALUES (52, '用户名为{q}，姓名为{ww}的用户登录成功!', '2021-03-24 23:35:33');
INSERT INTO `log` VALUES (53, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-25 00:41:34');
INSERT INTO `log` VALUES (54, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-25 02:10:33');
INSERT INTO `log` VALUES (55, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-25 12:16:11');
INSERT INTO `log` VALUES (56, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-25 12:21:35');
INSERT INTO `log` VALUES (57, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-25 12:23:17');
INSERT INTO `log` VALUES (58, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-25 12:25:08');
INSERT INTO `log` VALUES (59, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-25 12:30:57');
INSERT INTO `log` VALUES (60, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-25 12:34:47');
INSERT INTO `log` VALUES (61, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-25 12:36:54');
INSERT INTO `log` VALUES (62, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-25 14:37:00');
INSERT INTO `log` VALUES (63, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-25 14:38:21');
INSERT INTO `log` VALUES (64, '用户名为{u1}，姓名为{王一}的用户登录成功!', '2021-03-25 14:38:41');
INSERT INTO `log` VALUES (65, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-03-25 20:08:24');
INSERT INTO `log` VALUES (66, '用户名为{user}，姓名为{王一}的用户登录成功!', '2021-12-19 09:44:11');
INSERT INTO `log` VALUES (67, '用户名为{user}，姓名为{王一}的用户登录成功!', '2021-12-19 09:49:47');
INSERT INTO `log` VALUES (68, '用户名为{user}，姓名为{王一}的用户登录成功!', '2021-12-19 10:08:43');
INSERT INTO `log` VALUES (69, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 08:34:53');
INSERT INTO `log` VALUES (70, '用户名为{user}，姓名为{王一}的用户登录成功!', '2021-12-20 08:38:54');
INSERT INTO `log` VALUES (71, '用户名为{user}，姓名为{王一}的用户登录成功!', '2021-12-20 08:41:45');
INSERT INTO `log` VALUES (72, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 09:00:38');
INSERT INTO `log` VALUES (73, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 09:07:11');
INSERT INTO `log` VALUES (74, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 14:00:21');
INSERT INTO `log` VALUES (75, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 14:33:14');
INSERT INTO `log` VALUES (76, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:07:52');
INSERT INTO `log` VALUES (77, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:15:34');
INSERT INTO `log` VALUES (78, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:19:04');
INSERT INTO `log` VALUES (79, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:20:13');
INSERT INTO `log` VALUES (80, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:21:53');
INSERT INTO `log` VALUES (81, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:24:27');
INSERT INTO `log` VALUES (82, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:26:01');
INSERT INTO `log` VALUES (83, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:28:25');
INSERT INTO `log` VALUES (84, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:32:40');
INSERT INTO `log` VALUES (85, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:33:56');
INSERT INTO `log` VALUES (86, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:37:49');
INSERT INTO `log` VALUES (87, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 15:58:26');
INSERT INTO `log` VALUES (88, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 16:01:00');
INSERT INTO `log` VALUES (89, '用户名为{admin}，姓名为{管理员}的用户登录成功!', '2021-12-20 16:03:54');

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NULL DEFAULT NULL,
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未解决',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5000004 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES (5000001, 10001, '验证码问题', 'login', '登录页面的验证码实在是看不清楚，登录好多次才能成功', '123123', '未解决');
INSERT INTO `problem` VALUES (5000002, 10002, '需要排行榜', 'brtimes，bdtimes', '这两个页面弄成排行榜，从高到低最好。这样看得更清楚，而且更有意义', '12312345', '已解决');
INSERT INTO `problem` VALUES (5000003, 10001, '注意~', '无', '请多买一些软件开发相关的期刊哦，谢谢啦~', '15133330551', '未解决');

SET FOREIGN_KEY_CHECKS = 1;
