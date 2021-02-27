/*
 Navicat Premium Data Transfer

 Source Server         : vayne
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : dcsys

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 27/02/2021 21:24:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dcwjxx
-- ----------------------------
DROP TABLE IF EXISTS `dcwjxx`;
CREATE TABLE `dcwjxx`  (
  `WJID` int(11) NOT NULL COMMENT '问卷编号',
  `SFSH` int(11) NULL DEFAULT NULL,
  `XSSCYJ` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BMSFSH` int(11) NULL DEFAULT NULL,
  `BMSHTYJ` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GLCS` int(11) NULL DEFAULT NULL,
  `JGMC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构名称',
  `GKGLBM` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归口管理部门',
  `TXDZ` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通讯地址',
  `SZDY` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所在地域',
  `DWWZ` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位网址',
  `DZYX` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `FRDB` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法人代表',
  `YZBM` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `LXR` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人',
  `GDDH` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '固定电话',
  `YDDH` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动电话',
  `CZ` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `JGSX` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构属性',
  `JGJJ` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '机构简介',
  `JSXQMC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '技术需求名称',
  `QSXQNF` int(11) NOT NULL COMMENT '起始需求年份',
  `JZXQNF` int(11) NOT NULL COMMENT '截止需求年份',
  `ZDKJXQGS` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '重大科技需求概述',
  `GJZ` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键字',
  `NTRZJE` int(11) NOT NULL COMMENT '计划总投资',
  `JSXQHZMS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技术需求合作模式',
  `QTJSMS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他技术描述',
  `YJLX` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '研究类型',
  `XKFL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学科分类',
  `XQJSSSLY` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求技术所属领域',
  `XQJSYYHY` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求技术应用行业',
  PRIMARY KEY (`WJID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dcwjxx
-- ----------------------------
INSERT INTO `dcwjxx` VALUES (2020110814, 1, 'qdfqf浮球阀', 1, '11qwffq潜伏期', 1, '石家庄铁道大学', '河北出入境检验检疫局', '河北省石家庄市长安区北二环东路胜利北街17号', '石家庄市', '', '1586314897@qq.com', '张志伟', '', '张志伟', '', '15631307132', '', '研究机构', 'qgqg', 'erren', 2222, 3333, 'ebeberb///yjejjw///ejyeyj', 'dhs///shsh//////null///null', 100000, '独立研发', '', '应用研究', NULL, '电子信息///光机电一体化///生物技术与制药///现代农业', '高端装备制造业加工');
INSERT INTO `dcwjxx` VALUES (2020110817, 1, 'fqfq', 0, NULL, 1, '石家庄铁道大学', '省教育厅', '河北省石家庄市长安区北二环东路胜利北街17号', '石家庄市', '', '1586314897@qq.com', '张志伟', '', '张志伟', '', '15631307132', '', '高等院校', 'vqvqvqvqAVAV额给我个', '服气服气服气', 2020, 2050, '夫妻夫妻房去去火让他就是///DNF暖宝宝的烦恼///lavhaipvhapojva9g', 'vavbndj///丹东桧柏//////null///null', 100000, '独立研发', '', '基础研究', '木材科学与工程', NULL, NULL);
INSERT INTO `dcwjxx` VALUES (2020110818, 1, '0', 1, '0', 12, '石家庄铁道大学', '沧州市科技局', '河北省石家庄市长安区北二环东路胜利北街17号', '石家庄市', '', '1586314897@qq.com', '张志伟', '', '张志伟', '', '15631307132', '', '企业', '了群殴if蛤蟆吃', '1全国各我如果', 2020, 2060, '拉胯【哦AV互换viohavphi///是AV该VB拉锯爱uguophoph///gaibvhogvvavohavopug', '安viugvaojviuguosigv///是啊枸橘v//////null///null', 100000, '独立研发', '', '应用研究', NULL, '电子信息', '新一代信息技术加工');
INSERT INTO `dcwjxx` VALUES (2020110819, 1, '啊啊啊', 1, 'agga', 2, '石家庄铁道大学', ' ', '河北省石家庄市长安区北二环东路胜利北街17号', '张家口市', '', '1586314897@qq.com', '张志伟', '', '张志伟', '', '15631307132', '', '企业', '简单', '哈哈', 2222, 2727, '二号今天讲的///爱巴赫///水晶湖郡', '是你是否会///哦爱好//////null///null', 100000, '独立研发', '', '应用研究', NULL, '电子信息', '新一代信息技术加工');
INSERT INTO `dcwjxx` VALUES (2020111013, 1, '哈哈哈哈哈哈', 1, 'hrshsh', 24, '张家口', '张家口市科技局', '放弃无法区分', '张家口市', '', '1586314897@qq.com', '富强福', '', '富强福', '', '15631307132', '', '企业', 'ifgqfojqoihoi阿发', '阿飞偶家', 2000, 2020, '欺负欺负欺负///哦IQ防护棚【全局///发功夫好好', '安居客部v///哦爱好//////null///null', 100000, '独立研发', '', '基础研究', '采矿工程', NULL, NULL);
INSERT INTO `dcwjxx` VALUES (2020122419, 1, '带我去服务', 1, '区分富强福', 1, '石家庄铁道大学', ' ', '河北省石家庄市长安区北二环东路胜利北街17号', '石家庄市', '', '1586314897@qq.com', '张志伟', '', '张志伟', '', '15631307132', '', '企业', 'fwqwqfqwf阿覅花费', '哈哈', 2000, 2727, '反反复复///afoifa9h9///前往丰富', '软件工程///哦爱好//////null///null', 100000, '独立研发', '', '基础研究', '非织造材料与工程', NULL, NULL);

-- ----------------------------
-- Table structure for glcs
-- ----------------------------
DROP TABLE IF EXISTS `glcs`;
CREATE TABLE `glcs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bmmc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glcs
-- ----------------------------
INSERT INTO `glcs` VALUES (1, '办公室');
INSERT INTO `glcs` VALUES (2, '人事处');
INSERT INTO `glcs` VALUES (3, '机关党委');
INSERT INTO `glcs` VALUES (4, '政策法规处');
INSERT INTO `glcs` VALUES (5, '计划财务处');
INSERT INTO `glcs` VALUES (6, '平台与基础处');
INSERT INTO `glcs` VALUES (7, '国际合作处');
INSERT INTO `glcs` VALUES (8, '高新技术处');
INSERT INTO `glcs` VALUES (9, '农村科技处');
INSERT INTO `glcs` VALUES (10, '社会发展处');
INSERT INTO `glcs` VALUES (11, '成果与市场处');
INSERT INTO `glcs` VALUES (12, '监察室');
INSERT INTO `glcs` VALUES (13, '离退休干部处');
INSERT INTO `glcs` VALUES (14, '知识产权局');
INSERT INTO `glcs` VALUES (15, '半干旱中心');
INSERT INTO `glcs` VALUES (16, '山办');
INSERT INTO `glcs` VALUES (17, '机关服务中心');
INSERT INTO `glcs` VALUES (18, '科技研发中心');
INSERT INTO `glcs` VALUES (19, '科技情报研究院');
INSERT INTO `glcs` VALUES (20, '器材公司');
INSERT INTO `glcs` VALUES (21, '基金办');
INSERT INTO `glcs` VALUES (22, '档案馆');
INSERT INTO `glcs` VALUES (23, '科技管理信息中心');
INSERT INTO `glcs` VALUES (24, '科技投资中心');
INSERT INTO `glcs` VALUES (25, '成果转换中心');
INSERT INTO `glcs` VALUES (26, '中小企业创新资金管理中心');
INSERT INTO `glcs` VALUES (27, '对外交流中心');

-- ----------------------------
-- Table structure for gmjjfl
-- ----------------------------
DROP TABLE IF EXISTS `gmjjfl`;
CREATE TABLE `gmjjfl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NULL DEFAULT NULL,
  `flname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gmjjfl
-- ----------------------------
INSERT INTO `gmjjfl` VALUES (1, 0, '传统行业', 0);
INSERT INTO `gmjjfl` VALUES (2, 0, '战略性新兴产业', 0);
INSERT INTO `gmjjfl` VALUES (3, 0, '现代农业', 0);
INSERT INTO `gmjjfl` VALUES (4, 0, '社会发展及民生', 0);
INSERT INTO `gmjjfl` VALUES (5, 1, '钢铁', 1);
INSERT INTO `gmjjfl` VALUES (6, 1, '装备制造', 1);
INSERT INTO `gmjjfl` VALUES (7, 1, '建材', 1);
INSERT INTO `gmjjfl` VALUES (8, 1, '能源', 1);
INSERT INTO `gmjjfl` VALUES (9, 1, '石油化工', 1);
INSERT INTO `gmjjfl` VALUES (10, 1, '食品', 1);
INSERT INTO `gmjjfl` VALUES (11, 1, '纺织', 1);
INSERT INTO `gmjjfl` VALUES (12, 2, '钢铁加工', 5);
INSERT INTO `gmjjfl` VALUES (13, 2, '装备制造加工', 6);
INSERT INTO `gmjjfl` VALUES (14, 2, '建材加工', 7);
INSERT INTO `gmjjfl` VALUES (15, 2, '能源加工', 8);
INSERT INTO `gmjjfl` VALUES (16, 2, '石油化工加工', 9);
INSERT INTO `gmjjfl` VALUES (17, 2, '食品加工', 10);
INSERT INTO `gmjjfl` VALUES (18, 2, '纺织加工', 11);
INSERT INTO `gmjjfl` VALUES (19, 1, '节能环保', 2);
INSERT INTO `gmjjfl` VALUES (20, 1, '新一代信息技术', 2);
INSERT INTO `gmjjfl` VALUES (21, 1, '生物产业', 2);
INSERT INTO `gmjjfl` VALUES (22, 1, '新能源', 2);
INSERT INTO `gmjjfl` VALUES (23, 1, '新能源汽车', 2);
INSERT INTO `gmjjfl` VALUES (24, 1, '高端装备制造业', 2);
INSERT INTO `gmjjfl` VALUES (25, 1, '新材料', 2);
INSERT INTO `gmjjfl` VALUES (26, 2, '节能环保加工', 19);
INSERT INTO `gmjjfl` VALUES (27, 2, '新一代信息技术加工', 20);
INSERT INTO `gmjjfl` VALUES (28, 2, '生物产业加工', 21);
INSERT INTO `gmjjfl` VALUES (29, 2, '新能源加工', 22);
INSERT INTO `gmjjfl` VALUES (30, 2, '新能源汽车加工', 23);
INSERT INTO `gmjjfl` VALUES (31, 2, '高端装备制造业加工', 24);
INSERT INTO `gmjjfl` VALUES (32, 2, '新材料加工', 25);
INSERT INTO `gmjjfl` VALUES (33, 1, '农产品加工', 3);
INSERT INTO `gmjjfl` VALUES (34, 1, '农业装备', 3);
INSERT INTO `gmjjfl` VALUES (35, 1, '集约化种养殖', 3);
INSERT INTO `gmjjfl` VALUES (36, 2, '农产品加工', 33);
INSERT INTO `gmjjfl` VALUES (37, 2, '农业装备加工', 34);
INSERT INTO `gmjjfl` VALUES (38, 2, '集约化种养殖加工', 35);
INSERT INTO `gmjjfl` VALUES (39, 1, '重大疾病', 4);
INSERT INTO `gmjjfl` VALUES (40, 1, '环境保护', 4);
INSERT INTO `gmjjfl` VALUES (41, 1, '资源', 4);
INSERT INTO `gmjjfl` VALUES (42, 1, '生态修复', 4);
INSERT INTO `gmjjfl` VALUES (43, 2, '重大疾病处理', 39);
INSERT INTO `gmjjfl` VALUES (44, 2, '环境保护处理', 40);
INSERT INTO `gmjjfl` VALUES (45, 2, '资源处理', 41);
INSERT INTO `gmjjfl` VALUES (46, 2, '生态修复处理', 42);

-- ----------------------------
-- Table structure for jgsxbm
-- ----------------------------
DROP TABLE IF EXISTS `jgsxbm`;
CREATE TABLE `jgsxbm`  (
  `JGSXID` int(11) NOT NULL,
  `JGMC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`JGSXID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jsxqhzbm
-- ----------------------------
DROP TABLE IF EXISTS `jsxqhzbm`;
CREATE TABLE `jsxqhzbm`  (
  `MSID` int(11) NOT NULL,
  `MSMC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MSID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色编码',
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `selfmsg` int(255) NULL DEFAULT NULL COMMENT '个人信息',
  `updatepwd` int(11) NULL DEFAULT NULL COMMENT '修改密码',
  `addDemand` int(255) NULL DEFAULT NULL COMMENT '需求征集',
  `demandMange` int(255) NULL DEFAULT NULL COMMENT '需求管理',
  `xssh` int(255) NULL DEFAULT NULL COMMENT '形式审核',
  `bmsh` int(255) NULL DEFAULT NULL COMMENT '部门审核',
  `report` int(255) NULL DEFAULT NULL COMMENT '报表',
  `rolemange` int(255) NULL DEFAULT NULL COMMENT '管理权限',
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '管理员', 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `role` VALUES (2, '形式审核员', 1, 1, 1, 1, 1, 0, 1, 0);
INSERT INTO `role` VALUES (3, '部门审核员', 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO `role` VALUES (4, '注册用户', 1, 1, 1, 1, 0, 0, 1, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JGMC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SFZH` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `YZBM` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `YDDH` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` int(11) NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'ISMvKXpXpadDiUoOSoAfww==', '需求管理系统', '管理员', '130727200109182439', NULL, NULL, 1, 1);
INSERT INTO `user` VALUES (2, '张志伟', '4QrcOUm6Wau+VuBX8g+IPg==', '石家庄铁道大学', '张志伟', '130727200109182439', '', '', 4, 1);

-- ----------------------------
-- Table structure for xkfl
-- ----------------------------
DROP TABLE IF EXISTS `xkfl`;
CREATE TABLE `xkfl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NULL DEFAULT NULL,
  `xkname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学科名称',
  `fatherid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 558 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xkfl
-- ----------------------------
INSERT INTO `xkfl` VALUES (1, 0, '哲学', NULL);
INSERT INTO `xkfl` VALUES (2, 0, '经济学', NULL);
INSERT INTO `xkfl` VALUES (3, 0, '法学', NULL);
INSERT INTO `xkfl` VALUES (4, 0, '教育学', NULL);
INSERT INTO `xkfl` VALUES (5, 0, '文学', NULL);
INSERT INTO `xkfl` VALUES (6, 0, '历史学', NULL);
INSERT INTO `xkfl` VALUES (7, 0, '理学', NULL);
INSERT INTO `xkfl` VALUES (8, 0, '工学', NULL);
INSERT INTO `xkfl` VALUES (9, 0, '农学', NULL);
INSERT INTO `xkfl` VALUES (10, 0, '医学', NULL);
INSERT INTO `xkfl` VALUES (11, 0, '管理学', NULL);
INSERT INTO `xkfl` VALUES (12, 0, '艺术学', NULL);
INSERT INTO `xkfl` VALUES (13, 1, '哲学类', 1);
INSERT INTO `xkfl` VALUES (14, 2, '哲学', 13);
INSERT INTO `xkfl` VALUES (15, 2, '逻辑学', 13);
INSERT INTO `xkfl` VALUES (16, 2, '宗教学', 13);
INSERT INTO `xkfl` VALUES (17, 2, '伦理学', 13);
INSERT INTO `xkfl` VALUES (18, 1, '经济学类', 2);
INSERT INTO `xkfl` VALUES (19, 2, '经济学', 18);
INSERT INTO `xkfl` VALUES (20, 2, '经济统计学', 18);
INSERT INTO `xkfl` VALUES (21, 2, '国民经济管理', 18);
INSERT INTO `xkfl` VALUES (22, 2, '资源与环境经济学', 18);
INSERT INTO `xkfl` VALUES (23, 2, '商务经济学', 18);
INSERT INTO `xkfl` VALUES (24, 2, '能源经济', 18);
INSERT INTO `xkfl` VALUES (25, 1, '财政学类', 2);
INSERT INTO `xkfl` VALUES (26, 2, '财政学', 25);
INSERT INTO `xkfl` VALUES (27, 2, '税收学', 25);
INSERT INTO `xkfl` VALUES (28, 1, '金融学类', 2);
INSERT INTO `xkfl` VALUES (29, 2, '金融学', 28);
INSERT INTO `xkfl` VALUES (30, 2, '金融工程', 28);
INSERT INTO `xkfl` VALUES (31, 2, '保险学', 28);
INSERT INTO `xkfl` VALUES (32, 2, '投资学', 28);
INSERT INTO `xkfl` VALUES (33, 2, '金融数学', 28);
INSERT INTO `xkfl` VALUES (34, 2, '信用管理', 28);
INSERT INTO `xkfl` VALUES (35, 2, '经济与金融', 28);
INSERT INTO `xkfl` VALUES (36, 1, '经济与贸易类', 2);
INSERT INTO `xkfl` VALUES (37, 2, '国际经济与贸易', 36);
INSERT INTO `xkfl` VALUES (38, 2, '贸易经济', 36);
INSERT INTO `xkfl` VALUES (39, 1, '法学类', 3);
INSERT INTO `xkfl` VALUES (40, 2, '法学', 39);
INSERT INTO `xkfl` VALUES (41, 2, '知识产权', 39);
INSERT INTO `xkfl` VALUES (42, 2, '监狱学', 39);
INSERT INTO `xkfl` VALUES (43, 1, '政治学类', 3);
INSERT INTO `xkfl` VALUES (44, 2, '政治学与行政学', 43);
INSERT INTO `xkfl` VALUES (45, 2, '国际政治', 43);
INSERT INTO `xkfl` VALUES (46, 2, '外交学', 43);
INSERT INTO `xkfl` VALUES (47, 2, '国际事务与国际关系', 43);
INSERT INTO `xkfl` VALUES (48, 2, '政治学、经济学与哲学', 43);
INSERT INTO `xkfl` VALUES (49, 1, '社会学类', 3);
INSERT INTO `xkfl` VALUES (50, 2, '社会学', 49);
INSERT INTO `xkfl` VALUES (51, 2, '社会工作', 49);
INSERT INTO `xkfl` VALUES (52, 2, '人类学', 49);
INSERT INTO `xkfl` VALUES (53, 2, '女性学', 49);
INSERT INTO `xkfl` VALUES (54, 2, '家政学', 49);
INSERT INTO `xkfl` VALUES (55, 1, '民族学类', 3);
INSERT INTO `xkfl` VALUES (56, 2, '民族学', 55);
INSERT INTO `xkfl` VALUES (57, 1, '马克思主义理论类', 3);
INSERT INTO `xkfl` VALUES (58, 2, '科学社会主义', 57);
INSERT INTO `xkfl` VALUES (59, 2, '中国共产党历史', 57);
INSERT INTO `xkfl` VALUES (60, 2, '思想政治教育', 57);
INSERT INTO `xkfl` VALUES (61, 1, '公安学类', 3);
INSERT INTO `xkfl` VALUES (62, 2, '治安学', 61);
INSERT INTO `xkfl` VALUES (63, 2, '侦查学', 61);
INSERT INTO `xkfl` VALUES (64, 2, '边防管理', 61);
INSERT INTO `xkfl` VALUES (65, 2, '禁毒学', 61);
INSERT INTO `xkfl` VALUES (66, 2, '警犬技术', 61);
INSERT INTO `xkfl` VALUES (67, 2, '经济犯罪侦查', 61);
INSERT INTO `xkfl` VALUES (68, 2, '边防指挥', 61);
INSERT INTO `xkfl` VALUES (69, 2, '消防指挥', 61);
INSERT INTO `xkfl` VALUES (70, 2, '警卫学', 61);
INSERT INTO `xkfl` VALUES (71, 2, '公安情报学', 61);
INSERT INTO `xkfl` VALUES (72, 2, '犯罪学', 61);
INSERT INTO `xkfl` VALUES (73, 2, '公安管理学', 61);
INSERT INTO `xkfl` VALUES (74, 2, '涉外警务', 61);
INSERT INTO `xkfl` VALUES (75, 2, '国内安全保卫', 61);
INSERT INTO `xkfl` VALUES (76, 2, '警务指挥与战术', 61);
INSERT INTO `xkfl` VALUES (77, 1, '教育学类', 4);
INSERT INTO `xkfl` VALUES (78, 2, '教育学', 77);
INSERT INTO `xkfl` VALUES (79, 2, '科学教育', 77);
INSERT INTO `xkfl` VALUES (80, 2, '人文教育', 77);
INSERT INTO `xkfl` VALUES (81, 2, '教育技术学', 77);
INSERT INTO `xkfl` VALUES (82, 2, '艺术教育', 77);
INSERT INTO `xkfl` VALUES (83, 2, '学前教育', 77);
INSERT INTO `xkfl` VALUES (84, 2, '小学教育', 77);
INSERT INTO `xkfl` VALUES (85, 2, '特殊教育', 77);
INSERT INTO `xkfl` VALUES (86, 2, '华文教育', 77);
INSERT INTO `xkfl` VALUES (87, 1, '体育学类', 4);
INSERT INTO `xkfl` VALUES (88, 2, '体育教育', 87);
INSERT INTO `xkfl` VALUES (89, 2, '运动训练', 87);
INSERT INTO `xkfl` VALUES (90, 2, '社会体育指导与管理', 87);
INSERT INTO `xkfl` VALUES (91, 2, '武术与民族传统体育', 87);
INSERT INTO `xkfl` VALUES (92, 2, '运动人体科学', 87);
INSERT INTO `xkfl` VALUES (93, 2, '运动康复', 87);
INSERT INTO `xkfl` VALUES (94, 2, '休闲体育', 87);
INSERT INTO `xkfl` VALUES (95, 1, '中国语言文学类', 5);
INSERT INTO `xkfl` VALUES (96, 2, '汉语言文学', 95);
INSERT INTO `xkfl` VALUES (97, 2, '汉语言', 95);
INSERT INTO `xkfl` VALUES (98, 2, '汉语国际教育', 95);
INSERT INTO `xkfl` VALUES (99, 2, '中国少数民族语言文学', 95);
INSERT INTO `xkfl` VALUES (100, 2, '古典文献学', 95);
INSERT INTO `xkfl` VALUES (101, 2, '应用语言学', 95);
INSERT INTO `xkfl` VALUES (102, 2, '秘书学', 95);
INSERT INTO `xkfl` VALUES (103, 1, '外国语言文学类', 5);
INSERT INTO `xkfl` VALUES (104, 2, '英语', 103);
INSERT INTO `xkfl` VALUES (105, 2, '俄语', 103);
INSERT INTO `xkfl` VALUES (106, 2, '德语', 103);
INSERT INTO `xkfl` VALUES (107, 2, '法语', 103);
INSERT INTO `xkfl` VALUES (108, 2, '西班牙语', 103);
INSERT INTO `xkfl` VALUES (109, 2, '阿拉伯语', 103);
INSERT INTO `xkfl` VALUES (110, 2, '日语', 103);
INSERT INTO `xkfl` VALUES (111, 2, '波斯语', 103);
INSERT INTO `xkfl` VALUES (112, 2, '朝鲜语', 103);
INSERT INTO `xkfl` VALUES (113, 1, '新闻传播学类', 5);
INSERT INTO `xkfl` VALUES (114, 2, '新闻学', 113);
INSERT INTO `xkfl` VALUES (115, 2, '广播电视学', 113);
INSERT INTO `xkfl` VALUES (116, 2, '广告学', 113);
INSERT INTO `xkfl` VALUES (117, 2, '传播学', 113);
INSERT INTO `xkfl` VALUES (118, 2, '编辑出版学', 113);
INSERT INTO `xkfl` VALUES (119, 2, '网络与新媒体', 113);
INSERT INTO `xkfl` VALUES (120, 2, '数字出版', 113);
INSERT INTO `xkfl` VALUES (121, 1, '历史学类', 6);
INSERT INTO `xkfl` VALUES (122, 2, '历史学', 121);
INSERT INTO `xkfl` VALUES (123, 2, '世界史', 121);
INSERT INTO `xkfl` VALUES (124, 2, '考古学', 121);
INSERT INTO `xkfl` VALUES (125, 2, '文物与博物馆学', 121);
INSERT INTO `xkfl` VALUES (126, 2, '文物保护技术', 121);
INSERT INTO `xkfl` VALUES (127, 2, '外国语言与外国历史', 121);
INSERT INTO `xkfl` VALUES (128, 1, '数学类', 7);
INSERT INTO `xkfl` VALUES (129, 2, '数学与应用数学', 128);
INSERT INTO `xkfl` VALUES (130, 2, '信息与计算科学', 128);
INSERT INTO `xkfl` VALUES (131, 2, '数理基础科学', 128);
INSERT INTO `xkfl` VALUES (132, 1, '物理学类', 7);
INSERT INTO `xkfl` VALUES (133, 2, '物理学', 132);
INSERT INTO `xkfl` VALUES (134, 2, '应用物理学', 132);
INSERT INTO `xkfl` VALUES (135, 2, '核物理', 132);
INSERT INTO `xkfl` VALUES (136, 2, '声学', 132);
INSERT INTO `xkfl` VALUES (137, 1, '化学类', 7);
INSERT INTO `xkfl` VALUES (138, 2, '化学', 137);
INSERT INTO `xkfl` VALUES (139, 2, '应用化学', 137);
INSERT INTO `xkfl` VALUES (140, 2, '化学生物学', 137);
INSERT INTO `xkfl` VALUES (141, 2, '分子科学与工程', 137);
INSERT INTO `xkfl` VALUES (142, 1, '天文学类', 7);
INSERT INTO `xkfl` VALUES (143, 2, '天文学', 142);
INSERT INTO `xkfl` VALUES (144, 1, '地理科学类', 7);
INSERT INTO `xkfl` VALUES (145, 2, '地理科学', 144);
INSERT INTO `xkfl` VALUES (146, 2, '自然地理与资源环境', 144);
INSERT INTO `xkfl` VALUES (147, 2, '人文地理与城乡规划', 144);
INSERT INTO `xkfl` VALUES (148, 2, '地理信息科学', 144);
INSERT INTO `xkfl` VALUES (149, 1, '大气科学类', 7);
INSERT INTO `xkfl` VALUES (150, 2, '大气科学', 149);
INSERT INTO `xkfl` VALUES (151, 2, '应用气象学', 149);
INSERT INTO `xkfl` VALUES (152, 1, '海洋科学类', 7);
INSERT INTO `xkfl` VALUES (153, 2, '海洋科学', 152);
INSERT INTO `xkfl` VALUES (154, 2, '海洋技术', 152);
INSERT INTO `xkfl` VALUES (155, 2, '海洋资源与环境', 152);
INSERT INTO `xkfl` VALUES (156, 2, '军事海洋学', 152);
INSERT INTO `xkfl` VALUES (157, 1, '地球物理学类', 7);
INSERT INTO `xkfl` VALUES (158, 2, '地球物理学', 157);
INSERT INTO `xkfl` VALUES (159, 2, '空间科学与技术', 157);
INSERT INTO `xkfl` VALUES (160, 1, '地质学类', 7);
INSERT INTO `xkfl` VALUES (161, 2, '地质学', 160);
INSERT INTO `xkfl` VALUES (162, 2, '地球化学', 160);
INSERT INTO `xkfl` VALUES (163, 2, '地球信息科学与技术', 160);
INSERT INTO `xkfl` VALUES (164, 2, '古生物学', 160);
INSERT INTO `xkfl` VALUES (165, 1, '生物科学类', 7);
INSERT INTO `xkfl` VALUES (166, 2, '生物科学', 165);
INSERT INTO `xkfl` VALUES (167, 2, '生物技术', 165);
INSERT INTO `xkfl` VALUES (168, 2, '生物信息学', 165);
INSERT INTO `xkfl` VALUES (169, 2, '生态学', 165);
INSERT INTO `xkfl` VALUES (170, 1, '心理学类', 7);
INSERT INTO `xkfl` VALUES (171, 2, '心理学', 170);
INSERT INTO `xkfl` VALUES (172, 2, '应用心理学', 170);
INSERT INTO `xkfl` VALUES (173, 1, '统计学类', 7);
INSERT INTO `xkfl` VALUES (174, 2, '统计学', 173);
INSERT INTO `xkfl` VALUES (175, 2, '应用统计学', 173);
INSERT INTO `xkfl` VALUES (176, 1, '力学类', 8);
INSERT INTO `xkfl` VALUES (177, 2, '理论与应用力学', 176);
INSERT INTO `xkfl` VALUES (178, 2, '工程力学', 176);
INSERT INTO `xkfl` VALUES (179, 1, '机械类', 8);
INSERT INTO `xkfl` VALUES (180, 2, '机械工程', 179);
INSERT INTO `xkfl` VALUES (181, 2, '机械设计制造及其自动化', 179);
INSERT INTO `xkfl` VALUES (182, 2, '材料成型及控制工程', 179);
INSERT INTO `xkfl` VALUES (183, 2, '机械电子工程', 179);
INSERT INTO `xkfl` VALUES (184, 2, '工业设计', 179);
INSERT INTO `xkfl` VALUES (185, 2, '过程装备与控制工程', 179);
INSERT INTO `xkfl` VALUES (186, 2, '车辆工程', 179);
INSERT INTO `xkfl` VALUES (187, 2, '汽车服务工程', 179);
INSERT INTO `xkfl` VALUES (188, 2, '机械工艺技术', 179);
INSERT INTO `xkfl` VALUES (189, 2, '微机电系统工程', 179);
INSERT INTO `xkfl` VALUES (190, 2, '机电技术教育', 179);
INSERT INTO `xkfl` VALUES (191, 2, '汽车维修工程教育', 179);
INSERT INTO `xkfl` VALUES (192, 1, '仪器类', 8);
INSERT INTO `xkfl` VALUES (193, 2, '测控技术与仪器', 192);
INSERT INTO `xkfl` VALUES (194, 1, '材料类', 8);
INSERT INTO `xkfl` VALUES (195, 2, '材料科学与工程', 194);
INSERT INTO `xkfl` VALUES (196, 2, '材料物理', 194);
INSERT INTO `xkfl` VALUES (197, 2, '材料化学', 194);
INSERT INTO `xkfl` VALUES (198, 2, '冶金工程', 194);
INSERT INTO `xkfl` VALUES (199, 2, '金属材料工程', 194);
INSERT INTO `xkfl` VALUES (200, 2, '无机非金属材料工程', 194);
INSERT INTO `xkfl` VALUES (201, 2, '高分子材料与工程', 194);
INSERT INTO `xkfl` VALUES (202, 2, '复合材料与工程', 194);
INSERT INTO `xkfl` VALUES (203, 2, '粉体材料科学与工程', 194);
INSERT INTO `xkfl` VALUES (204, 2, '宝石及材料工艺学', 194);
INSERT INTO `xkfl` VALUES (205, 2, '焊接技术与工程', 194);
INSERT INTO `xkfl` VALUES (206, 2, '功能材料', 194);
INSERT INTO `xkfl` VALUES (207, 2, '纳米材料与技术', 194);
INSERT INTO `xkfl` VALUES (208, 2, '新能源材料与器件', 194);
INSERT INTO `xkfl` VALUES (209, 1, '能源动力类', 8);
INSERT INTO `xkfl` VALUES (210, 2, '能源与动力工程', 209);
INSERT INTO `xkfl` VALUES (211, 2, '能源与环境系统工程', 209);
INSERT INTO `xkfl` VALUES (212, 2, '新能源科学与工程', 209);
INSERT INTO `xkfl` VALUES (213, 1, '电气类', 8);
INSERT INTO `xkfl` VALUES (214, 2, '电气工程及其自动化', 213);
INSERT INTO `xkfl` VALUES (215, 2, '智能电网信息工程', 213);
INSERT INTO `xkfl` VALUES (216, 2, '光源与照明', 213);
INSERT INTO `xkfl` VALUES (217, 2, '电气工程与智能控制', 213);
INSERT INTO `xkfl` VALUES (218, 1, '电子信息类', 8);
INSERT INTO `xkfl` VALUES (219, 2, '电子信息工程', 218);
INSERT INTO `xkfl` VALUES (220, 2, '电子科学与技术', 218);
INSERT INTO `xkfl` VALUES (221, 2, '通信工程', 218);
INSERT INTO `xkfl` VALUES (222, 2, '微电子科学与工程', 218);
INSERT INTO `xkfl` VALUES (223, 2, '光电信息科学与工程', 218);
INSERT INTO `xkfl` VALUES (224, 2, '信息工程', 218);
INSERT INTO `xkfl` VALUES (225, 2, '广播电视工程', 218);
INSERT INTO `xkfl` VALUES (226, 2, '水声工程', 218);
INSERT INTO `xkfl` VALUES (227, 2, '电子封装技术', 218);
INSERT INTO `xkfl` VALUES (228, 2, '集成电路设计与集成系统', 218);
INSERT INTO `xkfl` VALUES (229, 2, '医学信息工程', 218);
INSERT INTO `xkfl` VALUES (230, 2, '电磁场与无线技术', 218);
INSERT INTO `xkfl` VALUES (231, 2, '电波传播与天线', 218);
INSERT INTO `xkfl` VALUES (232, 2, '电子信息科学与技术', 218);
INSERT INTO `xkfl` VALUES (233, 2, '电信工程及管理', 218);
INSERT INTO `xkfl` VALUES (234, 2, '应用电子技术教育', 218);
INSERT INTO `xkfl` VALUES (235, 1, '自动化类', 8);
INSERT INTO `xkfl` VALUES (236, 2, '自动化', 235);
INSERT INTO `xkfl` VALUES (237, 2, '轨道交通信号与控制', 235);
INSERT INTO `xkfl` VALUES (238, 1, '计算机类', 8);
INSERT INTO `xkfl` VALUES (239, 2, '计算机科学与技术', 238);
INSERT INTO `xkfl` VALUES (240, 2, '软件工程', 238);
INSERT INTO `xkfl` VALUES (241, 2, '网络工程', 238);
INSERT INTO `xkfl` VALUES (242, 2, '信息安全', 238);
INSERT INTO `xkfl` VALUES (243, 2, '物联网工程', 238);
INSERT INTO `xkfl` VALUES (244, 2, '数字媒体技术', 238);
INSERT INTO `xkfl` VALUES (245, 2, '智能科学与技术', 238);
INSERT INTO `xkfl` VALUES (246, 2, '空间信息与数字技术', 238);
INSERT INTO `xkfl` VALUES (247, 2, '电子与计算机工程', 238);
INSERT INTO `xkfl` VALUES (248, 1, '土木类', 8);
INSERT INTO `xkfl` VALUES (249, 2, '土木工程', 248);
INSERT INTO `xkfl` VALUES (250, 2, '建筑环境与能源应用工程', 248);
INSERT INTO `xkfl` VALUES (251, 2, '给排水科学与工程', 248);
INSERT INTO `xkfl` VALUES (252, 2, '建筑电气与智能化', 248);
INSERT INTO `xkfl` VALUES (253, 2, '城市地下空间工程', 248);
INSERT INTO `xkfl` VALUES (254, 2, '道路桥梁与渡河工程', 248);
INSERT INTO `xkfl` VALUES (255, 1, '水利类', 8);
INSERT INTO `xkfl` VALUES (256, 2, '水利水电工程', 255);
INSERT INTO `xkfl` VALUES (257, 2, '水文与水资源工程', 255);
INSERT INTO `xkfl` VALUES (258, 2, '港口航道与海岸工程', 255);
INSERT INTO `xkfl` VALUES (259, 2, '水务工程', 255);
INSERT INTO `xkfl` VALUES (260, 1, '测绘类', 8);
INSERT INTO `xkfl` VALUES (261, 2, '测绘工程', 260);
INSERT INTO `xkfl` VALUES (262, 2, '遥感科学与技术', 260);
INSERT INTO `xkfl` VALUES (263, 2, '导航工程', 260);
INSERT INTO `xkfl` VALUES (264, 2, '地理国情监测', 260);
INSERT INTO `xkfl` VALUES (265, 1, '化工与制药类', 8);
INSERT INTO `xkfl` VALUES (266, 2, '化学工程与工艺', 265);
INSERT INTO `xkfl` VALUES (267, 2, '制药工程', 265);
INSERT INTO `xkfl` VALUES (268, 2, '资源循环科学与工程', 265);
INSERT INTO `xkfl` VALUES (269, 2, '能源化学工程', 265);
INSERT INTO `xkfl` VALUES (270, 2, '化学工程与工业生物工程', 265);
INSERT INTO `xkfl` VALUES (271, 1, '地质类', 8);
INSERT INTO `xkfl` VALUES (272, 2, '地质工程', 271);
INSERT INTO `xkfl` VALUES (273, 2, '勘查技术与工程', 271);
INSERT INTO `xkfl` VALUES (274, 2, '资源勘查工程', 271);
INSERT INTO `xkfl` VALUES (275, 2, '地下水科学与工程', 271);
INSERT INTO `xkfl` VALUES (276, 1, '矿业类', 8);
INSERT INTO `xkfl` VALUES (277, 2, '采矿工程', 276);
INSERT INTO `xkfl` VALUES (278, 2, '石油工程', 276);
INSERT INTO `xkfl` VALUES (279, 2, '矿物加工工程', 276);
INSERT INTO `xkfl` VALUES (280, 2, '油气储运工程', 276);
INSERT INTO `xkfl` VALUES (281, 2, '矿物资源工程', 276);
INSERT INTO `xkfl` VALUES (282, 2, '海洋油气工程', 276);
INSERT INTO `xkfl` VALUES (283, 1, '纺织类', 8);
INSERT INTO `xkfl` VALUES (284, 2, '纺织工程', 283);
INSERT INTO `xkfl` VALUES (285, 2, '服装设计与工程', 283);
INSERT INTO `xkfl` VALUES (286, 2, '非织造材料与工程', 283);
INSERT INTO `xkfl` VALUES (287, 2, '服装设计与工艺教育', 283);
INSERT INTO `xkfl` VALUES (288, 1, '轻工类', 8);
INSERT INTO `xkfl` VALUES (289, 2, '轻化工程', 288);
INSERT INTO `xkfl` VALUES (290, 2, '包装工程', 288);
INSERT INTO `xkfl` VALUES (291, 2, '印刷工程', 288);
INSERT INTO `xkfl` VALUES (292, 1, '交通运输类', 8);
INSERT INTO `xkfl` VALUES (293, 2, '交通运输', 292);
INSERT INTO `xkfl` VALUES (294, 2, '交通工程', 292);
INSERT INTO `xkfl` VALUES (295, 2, '航海技术', 292);
INSERT INTO `xkfl` VALUES (296, 2, '轮机工程', 292);
INSERT INTO `xkfl` VALUES (297, 2, '飞行技术', 292);
INSERT INTO `xkfl` VALUES (298, 2, '交通设备与控制工程', 292);
INSERT INTO `xkfl` VALUES (299, 2, '救助与打捞工程', 292);
INSERT INTO `xkfl` VALUES (300, 2, '船舶电子电气工程', 292);
INSERT INTO `xkfl` VALUES (301, 1, '海洋工程类', 8);
INSERT INTO `xkfl` VALUES (302, 2, '船舶与海洋工程', 301);
INSERT INTO `xkfl` VALUES (303, 2, '海洋工程与技术', 301);
INSERT INTO `xkfl` VALUES (304, 2, '海洋资源开发技术', 301);
INSERT INTO `xkfl` VALUES (305, 1, '航空航天类', 8);
INSERT INTO `xkfl` VALUES (306, 2, '航空航天工程', 305);
INSERT INTO `xkfl` VALUES (307, 2, '飞行器设计与工程', 305);
INSERT INTO `xkfl` VALUES (308, 2, '飞行器制造工程', 305);
INSERT INTO `xkfl` VALUES (309, 2, '飞行器动力工程', 305);
INSERT INTO `xkfl` VALUES (310, 2, '飞行器环境与生命保障工程', 305);
INSERT INTO `xkfl` VALUES (311, 2, '飞行器质量与可靠性', 305);
INSERT INTO `xkfl` VALUES (312, 2, '飞行器适航技术', 305);
INSERT INTO `xkfl` VALUES (313, 1, '兵器类', 8);
INSERT INTO `xkfl` VALUES (314, 2, '武器系统与工程', 313);
INSERT INTO `xkfl` VALUES (315, 2, '武器发射工程', 313);
INSERT INTO `xkfl` VALUES (316, 2, '探测制导与控制技术', 313);
INSERT INTO `xkfl` VALUES (317, 2, '弹药工程与爆炸技术', 313);
INSERT INTO `xkfl` VALUES (318, 2, '特种能源技术与工程', 313);
INSERT INTO `xkfl` VALUES (319, 2, '装甲车辆工程', 313);
INSERT INTO `xkfl` VALUES (320, 2, '信息对抗技术', 313);
INSERT INTO `xkfl` VALUES (321, 1, '核工程类', 8);
INSERT INTO `xkfl` VALUES (322, 2, '核工程与核技术', 321);
INSERT INTO `xkfl` VALUES (323, 2, '辐射防护与核安全', 321);
INSERT INTO `xkfl` VALUES (324, 2, '工程物理', 321);
INSERT INTO `xkfl` VALUES (325, 2, '核化工与核燃料工程', 321);
INSERT INTO `xkfl` VALUES (326, 1, '农业工程类', 8);
INSERT INTO `xkfl` VALUES (327, 2, '农业工程', 326);
INSERT INTO `xkfl` VALUES (328, 2, '农业机械化及其自动化', 326);
INSERT INTO `xkfl` VALUES (329, 2, '农业电气化', 326);
INSERT INTO `xkfl` VALUES (330, 2, '农业建筑环境与能源工程', 326);
INSERT INTO `xkfl` VALUES (331, 2, '农业水利工程', 326);
INSERT INTO `xkfl` VALUES (332, 1, '林业工程类', 8);
INSERT INTO `xkfl` VALUES (333, 2, '森林工程', 332);
INSERT INTO `xkfl` VALUES (334, 2, '木材科学与工程', 332);
INSERT INTO `xkfl` VALUES (335, 2, '林产化工', 332);
INSERT INTO `xkfl` VALUES (336, 1, '环境科学与工程类', 8);
INSERT INTO `xkfl` VALUES (337, 2, '环境科学与工程', 336);
INSERT INTO `xkfl` VALUES (338, 2, '环境工程', 336);
INSERT INTO `xkfl` VALUES (339, 2, '环境科学', 336);
INSERT INTO `xkfl` VALUES (340, 2, '环境生态工程', 336);
INSERT INTO `xkfl` VALUES (341, 2, '环保设备工程', 336);
INSERT INTO `xkfl` VALUES (342, 2, '资源环境科学', 336);
INSERT INTO `xkfl` VALUES (343, 2, '水质科学与技术', 336);
INSERT INTO `xkfl` VALUES (344, 1, '生物医学工程类', 8);
INSERT INTO `xkfl` VALUES (345, 2, '生物医学工程', 344);
INSERT INTO `xkfl` VALUES (346, 2, '假肢矫形工程', 344);
INSERT INTO `xkfl` VALUES (347, 1, '食品科学与工程类', 8);
INSERT INTO `xkfl` VALUES (348, 2, '食品科学与工程', 347);
INSERT INTO `xkfl` VALUES (349, 2, '食品质量与安全', 347);
INSERT INTO `xkfl` VALUES (350, 2, '粮食工程', 347);
INSERT INTO `xkfl` VALUES (351, 2, '乳品工程', 347);
INSERT INTO `xkfl` VALUES (352, 2, '酿酒工程', 347);
INSERT INTO `xkfl` VALUES (353, 2, '葡萄与葡萄酒工程', 347);
INSERT INTO `xkfl` VALUES (354, 2, '食品营养与检验教育', 347);
INSERT INTO `xkfl` VALUES (355, 2, '烹饪与营养教育', 347);
INSERT INTO `xkfl` VALUES (356, 1, '建筑类', 8);
INSERT INTO `xkfl` VALUES (357, 2, '建筑学', 356);
INSERT INTO `xkfl` VALUES (358, 2, '城乡规划', 356);
INSERT INTO `xkfl` VALUES (359, 2, '风景园林', 356);
INSERT INTO `xkfl` VALUES (360, 2, '历史建筑保护工程', 356);
INSERT INTO `xkfl` VALUES (361, 1, '安全科学与工程类', 8);
INSERT INTO `xkfl` VALUES (362, 2, '安全工程', 361);
INSERT INTO `xkfl` VALUES (363, 1, '生物工程类', 8);
INSERT INTO `xkfl` VALUES (364, 2, '生物工程', 363);
INSERT INTO `xkfl` VALUES (365, 2, '生物制药', 363);
INSERT INTO `xkfl` VALUES (366, 1, '公安技术类', 8);
INSERT INTO `xkfl` VALUES (367, 2, '刑事科学技术', 366);
INSERT INTO `xkfl` VALUES (368, 2, '消防工程', 366);
INSERT INTO `xkfl` VALUES (369, 2, '交通管理工程', 366);
INSERT INTO `xkfl` VALUES (370, 2, '安全防范工程', 366);
INSERT INTO `xkfl` VALUES (371, 2, '公安视听技术', 366);
INSERT INTO `xkfl` VALUES (372, 2, '抢险救援指挥与技术', 366);
INSERT INTO `xkfl` VALUES (373, 2, '火灾勘查', 366);
INSERT INTO `xkfl` VALUES (374, 2, '网络安全与执法', 366);
INSERT INTO `xkfl` VALUES (375, 2, '核生化消防', 366);
INSERT INTO `xkfl` VALUES (376, 1, '植物生产类', 9);
INSERT INTO `xkfl` VALUES (377, 2, '农学', 376);
INSERT INTO `xkfl` VALUES (378, 2, '园艺', 376);
INSERT INTO `xkfl` VALUES (379, 2, '植物保护', 376);
INSERT INTO `xkfl` VALUES (380, 2, '植物科学与技术', 376);
INSERT INTO `xkfl` VALUES (381, 2, '种子科学与工程', 376);
INSERT INTO `xkfl` VALUES (382, 2, '设施农业科学与工程', 376);
INSERT INTO `xkfl` VALUES (383, 2, '茶学', 376);
INSERT INTO `xkfl` VALUES (384, 2, '烟草', 376);
INSERT INTO `xkfl` VALUES (385, 2, '应用生物科学', 376);
INSERT INTO `xkfl` VALUES (386, 2, '农艺教育', 376);
INSERT INTO `xkfl` VALUES (387, 2, '园艺教育', 376);
INSERT INTO `xkfl` VALUES (388, 1, '自然保护与环境生态类', 9);
INSERT INTO `xkfl` VALUES (389, 2, '农业资源与环境', 388);
INSERT INTO `xkfl` VALUES (390, 2, '野生动物与自然保护区管理', 388);
INSERT INTO `xkfl` VALUES (391, 2, '水土保持与荒漠化防治', 388);
INSERT INTO `xkfl` VALUES (392, 1, '动物生产类', 9);
INSERT INTO `xkfl` VALUES (393, 2, '动物科学', 392);
INSERT INTO `xkfl` VALUES (394, 2, '蚕学', 392);
INSERT INTO `xkfl` VALUES (395, 2, '蜂学', 392);
INSERT INTO `xkfl` VALUES (396, 1, '动物医学类', 9);
INSERT INTO `xkfl` VALUES (397, 2, '动物医学', 396);
INSERT INTO `xkfl` VALUES (398, 2, '动物药学', 396);
INSERT INTO `xkfl` VALUES (399, 2, '动植物检疫', 396);
INSERT INTO `xkfl` VALUES (400, 1, '林学类', 9);
INSERT INTO `xkfl` VALUES (401, 2, '林学', 400);
INSERT INTO `xkfl` VALUES (402, 2, '园林', 400);
INSERT INTO `xkfl` VALUES (403, 2, '森林保护', 400);
INSERT INTO `xkfl` VALUES (404, 1, '水产类', 9);
INSERT INTO `xkfl` VALUES (405, 2, '水产养殖学', 404);
INSERT INTO `xkfl` VALUES (406, 2, '海洋渔业科学与技术', 404);
INSERT INTO `xkfl` VALUES (407, 2, '水族科学与技术', 404);
INSERT INTO `xkfl` VALUES (408, 1, '草学类', 9);
INSERT INTO `xkfl` VALUES (409, 2, '草业科学', 408);
INSERT INTO `xkfl` VALUES (410, 1, '基础医学类', 10);
INSERT INTO `xkfl` VALUES (411, 2, '基础医学', 410);
INSERT INTO `xkfl` VALUES (412, 1, '临床医学类', 10);
INSERT INTO `xkfl` VALUES (413, 2, '临床医学', 412);
INSERT INTO `xkfl` VALUES (414, 2, '麻醉学', 412);
INSERT INTO `xkfl` VALUES (415, 2, '医学影像学', 412);
INSERT INTO `xkfl` VALUES (416, 2, '眼视光医学', 412);
INSERT INTO `xkfl` VALUES (417, 2, '精神医学', 412);
INSERT INTO `xkfl` VALUES (418, 2, '放射医学', 412);
INSERT INTO `xkfl` VALUES (419, 1, '口腔医学类', 10);
INSERT INTO `xkfl` VALUES (420, 2, '口腔医学', 419);
INSERT INTO `xkfl` VALUES (421, 1, '公共卫生与预防医学类', 10);
INSERT INTO `xkfl` VALUES (422, 2, '预防医学', 421);
INSERT INTO `xkfl` VALUES (423, 2, '食品卫生与营养学', 421);
INSERT INTO `xkfl` VALUES (424, 2, '妇幼保健医学', 421);
INSERT INTO `xkfl` VALUES (425, 2, '卫生监督', 421);
INSERT INTO `xkfl` VALUES (426, 2, '全球健康学', 421);
INSERT INTO `xkfl` VALUES (427, 1, '中医学类', 10);
INSERT INTO `xkfl` VALUES (428, 2, '中医学', 427);
INSERT INTO `xkfl` VALUES (429, 2, '针灸推拿学', 427);
INSERT INTO `xkfl` VALUES (430, 2, '藏医学', 427);
INSERT INTO `xkfl` VALUES (431, 2, '蒙医学', 427);
INSERT INTO `xkfl` VALUES (432, 2, '维医学', 427);
INSERT INTO `xkfl` VALUES (433, 2, '壮医学', 427);
INSERT INTO `xkfl` VALUES (434, 2, '哈医学', 427);
INSERT INTO `xkfl` VALUES (435, 1, '中西医结合类', 10);
INSERT INTO `xkfl` VALUES (436, 2, '中西医临床医学', 435);
INSERT INTO `xkfl` VALUES (437, 1, '药学类', 10);
INSERT INTO `xkfl` VALUES (438, 2, '药学', 437);
INSERT INTO `xkfl` VALUES (439, 2, '药物制剂', 437);
INSERT INTO `xkfl` VALUES (440, 2, '临床药学', 437);
INSERT INTO `xkfl` VALUES (441, 2, '药事管理', 437);
INSERT INTO `xkfl` VALUES (442, 2, '药物分析', 437);
INSERT INTO `xkfl` VALUES (443, 2, '药物化学', 437);
INSERT INTO `xkfl` VALUES (444, 2, '海洋药学', 437);
INSERT INTO `xkfl` VALUES (445, 1, '中药学类', 10);
INSERT INTO `xkfl` VALUES (446, 2, '中药学', 445);
INSERT INTO `xkfl` VALUES (447, 2, '中药资源与开发', 445);
INSERT INTO `xkfl` VALUES (448, 2, '藏药学', 445);
INSERT INTO `xkfl` VALUES (449, 2, '蒙药学', 445);
INSERT INTO `xkfl` VALUES (450, 2, '中药制药', 445);
INSERT INTO `xkfl` VALUES (451, 2, '中草药栽培与鉴定', 445);
INSERT INTO `xkfl` VALUES (452, 1, '法医学类', 10);
INSERT INTO `xkfl` VALUES (453, 2, '法医学', 452);
INSERT INTO `xkfl` VALUES (454, 1, '医学技术类', 10);
INSERT INTO `xkfl` VALUES (455, 2, '医学检验技术', 454);
INSERT INTO `xkfl` VALUES (456, 2, '医学实验技术', 454);
INSERT INTO `xkfl` VALUES (457, 2, '医学影像技术', 454);
INSERT INTO `xkfl` VALUES (458, 2, '眼视光学', 454);
INSERT INTO `xkfl` VALUES (459, 2, '康复治疗学', 454);
INSERT INTO `xkfl` VALUES (460, 2, '口腔医学技术', 454);
INSERT INTO `xkfl` VALUES (461, 2, '卫生检验与检疫', 454);
INSERT INTO `xkfl` VALUES (462, 2, '听力与言语康复学', 454);
INSERT INTO `xkfl` VALUES (463, 1, '护理学类', 10);
INSERT INTO `xkfl` VALUES (464, 2, '护理学', 463);
INSERT INTO `xkfl` VALUES (465, 1, '管理科学与工程类', 11);
INSERT INTO `xkfl` VALUES (466, 2, '管理科学', 465);
INSERT INTO `xkfl` VALUES (467, 2, '信息管理与信息系统', 465);
INSERT INTO `xkfl` VALUES (468, 2, '工程管理', 465);
INSERT INTO `xkfl` VALUES (469, 2, '房地产开发与管理', 465);
INSERT INTO `xkfl` VALUES (470, 2, '工程造价', 465);
INSERT INTO `xkfl` VALUES (471, 2, '保密管理', 465);
INSERT INTO `xkfl` VALUES (472, 1, '工商管理类', 11);
INSERT INTO `xkfl` VALUES (473, 2, '工商管理', 472);
INSERT INTO `xkfl` VALUES (474, 2, '市场营销', 472);
INSERT INTO `xkfl` VALUES (475, 2, '会计学', 472);
INSERT INTO `xkfl` VALUES (476, 2, '财务管理', 472);
INSERT INTO `xkfl` VALUES (477, 2, '国际商务', 472);
INSERT INTO `xkfl` VALUES (478, 2, '人力资源管理', 472);
INSERT INTO `xkfl` VALUES (479, 2, '审计学', 472);
INSERT INTO `xkfl` VALUES (480, 2, '资产评估', 472);
INSERT INTO `xkfl` VALUES (481, 2, '物业管理', 472);
INSERT INTO `xkfl` VALUES (482, 2, '文化产业管理', 472);
INSERT INTO `xkfl` VALUES (483, 2, '劳动关系', 472);
INSERT INTO `xkfl` VALUES (484, 2, '体育经济与管理', 472);
INSERT INTO `xkfl` VALUES (485, 2, '财务会计教育', 472);
INSERT INTO `xkfl` VALUES (486, 2, '市场营销教育', 472);
INSERT INTO `xkfl` VALUES (487, 1, '农业经济管理类', 11);
INSERT INTO `xkfl` VALUES (488, 2, '农林经济管理', 487);
INSERT INTO `xkfl` VALUES (489, 2, '农村区域发展', 487);
INSERT INTO `xkfl` VALUES (490, 1, '公共管理类', 11);
INSERT INTO `xkfl` VALUES (491, 2, '公共事业管理', 490);
INSERT INTO `xkfl` VALUES (492, 2, '行政管理', 490);
INSERT INTO `xkfl` VALUES (493, 2, '劳动与社会保障', 490);
INSERT INTO `xkfl` VALUES (494, 2, '土地资源管理', 490);
INSERT INTO `xkfl` VALUES (495, 2, '城市管理', 490);
INSERT INTO `xkfl` VALUES (496, 2, '海关管理', 490);
INSERT INTO `xkfl` VALUES (497, 2, '交通管理', 490);
INSERT INTO `xkfl` VALUES (498, 2, '海事管理', 490);
INSERT INTO `xkfl` VALUES (499, 2, '公共关系学', 490);
INSERT INTO `xkfl` VALUES (500, 1, '图书情报与档案管理类', 11);
INSERT INTO `xkfl` VALUES (501, 2, '图书馆学', 500);
INSERT INTO `xkfl` VALUES (502, 2, '档案学', 500);
INSERT INTO `xkfl` VALUES (503, 2, '信息资源管理', 500);
INSERT INTO `xkfl` VALUES (504, 1, '物流管理与工程类', 11);
INSERT INTO `xkfl` VALUES (505, 2, '物流管理', 504);
INSERT INTO `xkfl` VALUES (506, 2, '物流工程', 504);
INSERT INTO `xkfl` VALUES (507, 2, '采购管理', 504);
INSERT INTO `xkfl` VALUES (508, 1, '工业工程类', 11);
INSERT INTO `xkfl` VALUES (509, 2, '工业工程', 508);
INSERT INTO `xkfl` VALUES (510, 2, '标准化工程', 508);
INSERT INTO `xkfl` VALUES (511, 2, '质量管理工程', 508);
INSERT INTO `xkfl` VALUES (512, 1, '电子商务类', 11);
INSERT INTO `xkfl` VALUES (513, 2, '电子商务', 512);
INSERT INTO `xkfl` VALUES (514, 2, '电子商务及法律', 512);
INSERT INTO `xkfl` VALUES (515, 1, '旅游管理类', 11);
INSERT INTO `xkfl` VALUES (516, 2, '旅游管理', 515);
INSERT INTO `xkfl` VALUES (517, 2, '酒店管理', 515);
INSERT INTO `xkfl` VALUES (518, 2, '会展经济与管理', 515);
INSERT INTO `xkfl` VALUES (519, 2, '旅游管理与服务教育', 515);
INSERT INTO `xkfl` VALUES (520, 1, '艺术学理论类', 12);
INSERT INTO `xkfl` VALUES (521, 2, '艺术史论', 520);
INSERT INTO `xkfl` VALUES (522, 1, '音乐与舞蹈学类', 12);
INSERT INTO `xkfl` VALUES (523, 2, '音乐表演', 522);
INSERT INTO `xkfl` VALUES (524, 2, '音乐学', 522);
INSERT INTO `xkfl` VALUES (525, 2, '作曲与作曲技术理论', 522);
INSERT INTO `xkfl` VALUES (526, 2, '舞蹈表演', 522);
INSERT INTO `xkfl` VALUES (527, 2, '舞蹈学', 522);
INSERT INTO `xkfl` VALUES (528, 2, '舞蹈编导', 522);
INSERT INTO `xkfl` VALUES (529, 1, '戏剧与影视学类', 12);
INSERT INTO `xkfl` VALUES (530, 2, '表演', 529);
INSERT INTO `xkfl` VALUES (531, 2, '戏剧学', 529);
INSERT INTO `xkfl` VALUES (532, 2, '电影学', 529);
INSERT INTO `xkfl` VALUES (533, 2, '戏剧影视文学', 529);
INSERT INTO `xkfl` VALUES (534, 2, '广播电视编导', 529);
INSERT INTO `xkfl` VALUES (535, 2, '戏剧影视导演', 529);
INSERT INTO `xkfl` VALUES (536, 2, '戏剧影视美术设计', 529);
INSERT INTO `xkfl` VALUES (537, 2, '录音艺术', 529);
INSERT INTO `xkfl` VALUES (538, 2, '播音与主持艺术', 529);
INSERT INTO `xkfl` VALUES (539, 2, '动画', 529);
INSERT INTO `xkfl` VALUES (540, 2, '影视摄影与制作', 529);
INSERT INTO `xkfl` VALUES (541, 1, '美术学类', 12);
INSERT INTO `xkfl` VALUES (542, 2, '美术学', 541);
INSERT INTO `xkfl` VALUES (543, 2, '绘画', 541);
INSERT INTO `xkfl` VALUES (544, 2, '雕塑', 541);
INSERT INTO `xkfl` VALUES (545, 2, '摄影', 541);
INSERT INTO `xkfl` VALUES (546, 2, '书法学', 541);
INSERT INTO `xkfl` VALUES (547, 2, '中国画', 541);
INSERT INTO `xkfl` VALUES (548, 1, '设计学类', 12);
INSERT INTO `xkfl` VALUES (549, 2, '艺术设计学', 548);
INSERT INTO `xkfl` VALUES (550, 2, '视觉传达设计', 548);
INSERT INTO `xkfl` VALUES (551, 2, '环境设计', 548);
INSERT INTO `xkfl` VALUES (552, 2, '产品设计', 548);
INSERT INTO `xkfl` VALUES (553, 2, '服装与服饰设计', 548);
INSERT INTO `xkfl` VALUES (554, 2, '公共艺术', 548);
INSERT INTO `xkfl` VALUES (555, 2, '工艺美术', 548);
INSERT INTO `xkfl` VALUES (556, 2, '数字媒体艺术', 548);
INSERT INTO `xkfl` VALUES (557, 2, '艺术与科技', 548);

-- ----------------------------
-- Table structure for xqjssslybm
-- ----------------------------
DROP TABLE IF EXISTS `xqjssslybm`;
CREATE TABLE `xqjssslybm`  (
  `LYID` int(11) NOT NULL,
  `LYMC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`LYID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for yjlxbm
-- ----------------------------
DROP TABLE IF EXISTS `yjlxbm`;
CREATE TABLE `yjlxbm`  (
  `YJLXID` int(11) NOT NULL,
  `YJLXMC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`YJLXID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
