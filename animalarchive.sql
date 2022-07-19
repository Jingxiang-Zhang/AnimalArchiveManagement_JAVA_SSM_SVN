/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 47.93.217.66:3306
 Source Schema         : animalarchive

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 22/07/2020 09:53:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 2020rg_group9_advertisingprotocolrecord
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_advertisingprotocolrecord`;
CREATE TABLE `2020rg_group9_advertisingprotocolrecord`  (
  `AdvertsAgreeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '推广协议编号',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `archiveNumber` int(11) NULL DEFAULT NULL COMMENT '动物档案编号',
  `ResponsiblePerson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '责任人编号，uid外键',
  `StoreAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存放位置',
  `BusinessDate` datetime(0) NULL DEFAULT NULL COMMENT '签订日期',
  PRIMARY KEY (`AdvertsAgreeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_advertisingprotocolrecord
-- ----------------------------
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (1, '16', 1, '8', '10柜下层', '2020-04-01 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (2, '16', 2, '9', '12柜中层', '2020-04-02 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (3, '16', 3, '10', '12柜上层', '2020-04-03 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (4, '20', 15, '8', '11柜下层', '2020-04-04 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (5, '20', 16, '9', '13柜上层', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (6, '20', 17, '10', '14柜中层', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (7, '27', 31, '8', '15柜下层', '2020-04-07 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (8, '27', 32, '9', '11柜中层', '2020-04-08 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (9, '27', 33, '10', '12柜中层', '2020-04-09 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (10, '28', 36, '10', '11柜上层', '2020-04-10 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (11, '28', 37, '8', '10柜下层', '2020-04-11 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (12, '28', 38, '9', '12柜中层', '2020-04-12 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (13, '29', 41, '10', '12柜上层', '2020-04-13 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (14, '29', 42, '8', '11柜下层', '2020-04-14 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (15, '29', 43, '9', '13柜上层', '2020-04-15 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (16, '30', 46, '10', '14柜中层', '2020-04-16 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (17, '30', 47, '8', '15柜下层', '2020-04-17 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (18, '30', 48, '9', '11柜中层', '2020-04-18 00:00:00');
INSERT INTO `2020rg_group9_advertisingprotocolrecord` VALUES (19, '25', 27, '8', '11柜下层', '2020-04-25 18:41:17');

-- ----------------------------
-- Table structure for 2020rg_group9_animalarchive
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_animalarchive`;
CREATE TABLE `2020rg_group9_animalarchive`  (
  `archiveNumber` int(11) NOT NULL AUTO_INCREMENT COMMENT '动物档案编号',
  `eartagNumber` int(11) NULL DEFAULT NULL COMMENT '耳标编号',
  `initialDate` datetime(0) NULL DEFAULT NULL COMMENT '档案初始化日期',
  `initialPeople` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建档人',
  `responsiblePeople` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `belongPeople` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属PI',
  `archiveDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '档案描述',
  `archiveKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '档案关键字',
  `releaseStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布状态，表示是否发布动物档案',
  `releaseDate` datetime(0) NULL DEFAULT NULL COMMENT '发布日期',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `CanApplyAuthz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可申请授权',
  `AuthzState` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权状态，0为“未处理”，1为“已授权”',
  `CanApplyAdverts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可申请推广',
  `AdvertsState` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推广状态，0为“未处理”，1为“已推广”',
  PRIMARY KEY (`archiveNumber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_animalarchive
-- ----------------------------
INSERT INTO `2020rg_group9_animalarchive` VALUES (1, 1, '2020-01-01 00:00:00', '11', '1', '16', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-01 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (2, 2, '2020-01-01 00:00:00', '12', '2', '16', '以乌蒙凤鸡为研究对象，进行生物信息学分析', '乌蒙凤鸡,生物信息学分析', '1', '2020-01-02 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (3, 3, '2020-01-01 00:00:00', '13', '3', '16', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-03 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (4, 4, '2020-01-01 00:00:00', '11', '4', '16', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-04 00:00:00', 100.00, '0', '已授权', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (5, 5, '2020-01-01 00:00:00', '12', '5', '16', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-05 00:00:00', 100.00, '0', '已授权', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (6, 6, '2020-01-06 00:00:00', '13', '6', '16', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-06 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (7, 7, '2020-01-07 00:00:00', '11', '7', '16', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-07 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (8, 8, '2020-01-08 00:00:00', '12', '1', '17', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-01-08 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (9, 9, '2020-01-09 00:00:00', '13', '2', '17', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-01-09 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (10, 10, '2020-01-10 00:00:00', '11', '3', '18', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-01-10 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (11, 11, '2020-01-11 00:00:00', '12', '4', '18', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-01-11 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (12, 12, '2020-01-12 00:00:00', '13', '5', '19', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-01-12 00:00:00', 150.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (13, 13, '2020-01-13 00:00:00', '11', '6', '19', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-01-13 00:00:00', 150.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (14, 14, '2020-01-14 00:00:00', '12', '7', '19', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-01-14 00:00:00', 150.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (15, 15, '2020-01-15 00:00:00', '13', '1', '20', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-01-15 00:00:00', 150.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (16, 16, '2020-01-16 00:00:00', '11', '2', '20', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-01-16 00:00:00', 150.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (17, 17, '2020-01-17 00:00:00', '12', '3', '20', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-01-17 00:00:00', 150.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (18, 18, '2020-01-18 00:00:00', '13', '4', '21', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-01-18 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (19, 19, '2020-01-19 00:00:00', '11', '5', '21', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-01-19 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (20, 20, '2020-01-20 00:00:00', '12', '6', '21', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-01-20 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (21, 21, '2020-01-21 00:00:00', '13', '7', '22', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-21 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (22, 22, '2020-01-22 00:00:00', '11', '1', '22', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-22 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (23, 23, '2020-01-23 00:00:00', '12', '2', '23', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-23 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (24, 24, '2020-01-24 00:00:00', '13', '3', '23', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-24 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (25, 25, '2020-01-25 00:00:00', '11', '4', '24', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-25 00:00:00', 100.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (26, 26, '2020-01-26 00:00:00', '12', '5', '24', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-01-26 00:00:00', 100.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (27, 27, '2020-01-27 00:00:00', '13', '6', '25', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-01-27 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (28, 28, '2020-03-01 00:00:00', '11', '7', '25', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-01 00:00:00', 100.00, '0', '已授权', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (29, 29, '2020-03-02 00:00:00', '12', '1', '26', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-02 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (30, 30, '2020-03-03 00:00:00', '13', '2', '26', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-03 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (31, 31, '2020-03-04 00:00:00', '11', '3', '27', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-03-04 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (32, 32, '2020-03-05 00:00:00', '12', '4', '27', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-03-05 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (33, 33, '2020-03-06 00:00:00', '13', '5', '27', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-03-06 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (34, 34, '2020-03-07 00:00:00', '11', '6', '27', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-03-07 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (35, 35, '2020-03-08 00:00:00', '12', '7', '27', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-08 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (36, 36, '2020-03-09 00:00:00', '13', '1', '28', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-09 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (37, 37, '2020-03-10 00:00:00', '11', '2', '28', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-10 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (38, 38, '2020-03-11 00:00:00', '12', '3', '28', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-11 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (39, 39, '2020-03-12 00:00:00', '13', '4', '28', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-12 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (40, 40, '2020-03-13 00:00:00', '11', '5', '28', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-13 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (41, 41, '2020-03-14 00:00:00', '12', '6', '29', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-03-14 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (42, 42, '2020-03-15 00:00:00', '13', '7', '29', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-03-15 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (43, 43, '2020-03-16 00:00:00', '11', '1', '29', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-03-16 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (44, 44, '2020-03-17 00:00:00', '12', '2', '29', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-03-17 00:00:00', NULL, '0', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (45, 45, '2020-03-18 00:00:00', '13', '3', '29', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-03-18 00:00:00', NULL, '0', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (46, 46, '2020-03-19 00:00:00', '11', '4', '30', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-03-19 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (47, 47, '2020-03-20 00:00:00', '12', '5', '30', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-03-20 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (48, 48, '2020-03-21 00:00:00', '13', '6', '30', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-03-21 00:00:00', 100.00, '0', '已授权', '0', '已推广');
INSERT INTO `2020rg_group9_animalarchive` VALUES (49, 49, '2020-03-22 00:00:00', '11', '7', '30', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-03-22 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (50, 50, '2020-03-23 00:00:00', '12', '1', '30', '对沙子岭猪育种方案进行优化,以获得目前条件下最优育种方案', '沙子岭猪,育种方案优化', '1', '2020-03-23 00:00:00', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (51, 51, '2020-03-23 00:00:00', '11', '4', '16', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-03-23 13:57:16', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (52, 52, '2020-03-13 13:59:15', '11', '4', '16', '通过选育,开发金华猪种质资源', '通过选育,开发金华猪种质资源', '1', '2020-03-23 13:59:47', NULL, '1', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (53, 53, '2020-03-23 00:00:00', '11', '5', '16', '记录湘村黑猪母猪繁殖性状', '黑猪,育种方案优化', '1', '2020-03-23 00:00:00', NULL, '0', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (54, 54, '2020-03-23 00:00:00', '11', '5', '16', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-23 00:00:00', NULL, '0', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (55, 55, '2020-03-23 00:00:00', '11', '5', '16', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-23 00:00:00', NULL, '0', '未处理', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (56, 56, '2020-03-23 00:00:00', '11', '4', '16', '以乌蒙凤鸡为研究对象，进行生物信息学分析', '乌蒙凤鸡,生物信息学分析', '1', '2020-03-23 00:00:00', 115.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (57, 57, '2020-03-23 00:00:00', '11', '4', '16', '测定了八眉猪背肌、腹肌两个部位中的氨基酸含量，分析其氨基酸种类与比例', '八眉猪,氨基酸的营养价值', '1', '2020-03-23 00:00:00', 115.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (58, 58, '2020-03-23 00:00:00', '11', '4', '16', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-03-23 13:57:16', 115.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (59, 59, '2020-03-23 00:00:00', '11', '4', '16', '以乌蒙凤鸡为研究对象，进行生物信息学分析', '乌蒙凤鸡,生物信息学分析', '1', '2020-03-23 00:00:00', 115.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (60, 60, '2020-03-23 00:00:00', '11', '4', '16', '通过选育,开发金华猪种质资源', '金华猪,生产性能新技术', '1', '2020-03-23 13:57:16', 100.00, '0', '已授权', '1', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (61, 61, '2020-03-23 00:00:00', '11', '4', '16', '以乌蒙凤鸡为研究对象，进行生物信息学分析', '乌蒙凤鸡,生物信息学分析', '1', '2020-03-23 00:00:00', 100.00, '0', '已授权', '0', '未处理');
INSERT INTO `2020rg_group9_animalarchive` VALUES (62, 62, '2020-07-21 17:45:27', '12', '4', '33', '测试档案', '测试，档案', '0', NULL, NULL, '1', '未处理', '0', '未处理');

-- ----------------------------
-- Table structure for 2020rg_group9_animalbasicinfo
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_animalbasicinfo`;
CREATE TABLE `2020rg_group9_animalbasicinfo`  (
  `BasicNumber` int(11) NOT NULL AUTO_INCREMENT COMMENT '基本信息号，对应动物档案编号',
  `AnimalWeight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动物体重',
  `AnimalLengh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动物体长',
  `AnimalBloodType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动物血型',
  `AnimalOrigin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动物来源',
  `AnimalDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动物描述',
  `AnimalSpecies` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动物品种',
  `AnimalSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动物性别',
  PRIMARY KEY (`BasicNumber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_animalbasicinfo
-- ----------------------------
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (1, '48', '136', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (2, '20', '100', 'A', '畜牧场购买', '乌蒙凤鸡', '鸡', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (3, '55', '138', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (4, '52.5', '120', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (5, '50', '140', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (6, '52', '141', 'A', '畜牧场购买', '沙子岭猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (7, '54', '142', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (8, '75', '183', 'A', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (9, '76', '184', 'A', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (10, '77', '176', 'B', '畜牧场购买', '八眉猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (11, '75', '177', 'B', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (12, '76', '178', 'A', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (13, '77', '179', 'A', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (14, '75', '180', 'A', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (15, '76', '181', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (16, '77', '182', 'A', '畜牧场购买', '八眉猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (17, '75', '183', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (18, '70', '184', 'A', '畜牧场购买', '金华猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (19, '76', '176', 'A', '畜牧场购买', '金华猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (20, '78', '176', 'A', '畜牧场购买', '金华猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (21, '51', '178', 'B', '畜牧场购买', '沙子岭猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (22, '52', '179', 'B', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (23, '54', '180', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (24, '52', '181', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (25, '50', '182', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (26, '52', '183', 'A', '畜牧场购买', '沙子岭猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (27, '77', '184', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (28, '75', '176', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (29, '76', '177', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (30, '77', '178', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (31, '75', '179', 'A', '畜牧场购买', '金华猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (32, '76', '180', 'B', '畜牧场购买', '金华猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (33, '77', '181', 'B', '畜牧场购买', '金华猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (34, '75', '182', 'A', '畜牧场购买', '金华猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (35, '76', '183', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (36, '77', '184', 'A', '畜牧场购买', '八眉猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (37, '78', '176', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (38, '77', '177', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (39, '75', '178', 'A', '畜牧场购买', '八眉猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (40, '76', '179', 'A', '畜牧场购买', '八眉猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (41, '77', '180', 'A', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (42, '78', '181', 'A', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (43, '76', '182', 'B', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (44, '77', '183', 'B', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (45, '78', '184', 'A', '畜牧场购买', '湘村黑猪母猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (46, '51', '136', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (47, '52', '137', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (48, '54', '138', 'A', '畜牧场购买', '沙子岭猪', '猪', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (49, '52', '139', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (50, '50', '140', 'A', '畜牧场购买', '沙子岭猪', '猪', '公');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (108, '450', '100', 'B', '畜牧场购买', '八眉猪', '牛', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (109, '450', '100', 'B', '畜牧场购买', '八眉猪', '牛', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (110, '450', '100', 'B', '畜牧场购买', '八眉猪', '牛', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (111, '450', '100', 'B', '畜牧场购买', '八眉猪', '牛', '母');
INSERT INTO `2020rg_group9_animalbasicinfo` VALUES (112, '450', '100', 'B', '畜牧场购买', '八眉猪', '牛', '母');

-- ----------------------------
-- Table structure for 2020rg_group9_animalbreedrecord
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_animalbreedrecord`;
CREATE TABLE `2020rg_group9_animalbreedrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '繁殖记录号',
  `archiveNumber` int(11) NULL DEFAULT NULL COMMENT '繁殖记录表号',
  `Recorder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录员',
  `RecordDate` datetime(0) NULL DEFAULT NULL COMMENT '记录日期',
  `BreedDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '繁殖描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `BreedRecordNumber`(`archiveNumber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_animalbreedrecord
-- ----------------------------
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (1, 2, '50', '2020-07-21 11:14:46', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (2, 6, '7', '2020-06-02 00:00:00', '妊娠期113天，产仔7头');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (3, 12, '50', '2020-07-21 11:14:22', '妊娠期112天，产仔8头分');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (4, 13, '50', '2020-07-20 20:19:57', '妊娠期114天，产仔9头');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (5, 14, '7', '2020-06-05 00:00:00', '妊娠期112天，产仔10头');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (6, 2, '5', '2020-03-01 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (7, 2, '7', '2020-03-02 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (8, 2, '5', '2020-03-03 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (9, 2, '7', '2020-03-04 00:00:00', '产蛋2枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (10, 2, '7', '2020-03-05 00:00:00', '产蛋2枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (11, 2, '7', '2020-03-06 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (12, 2, '7', '2020-03-07 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (13, 2, '7', '2020-03-08 00:00:00', '产蛋2枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (14, 2, '7', '2020-03-09 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (15, 2, '7', '2020-03-10 00:00:00', '产蛋2枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (16, 2, '7', '2020-03-11 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (17, 2, '7', '2020-03-12 00:00:00', '产蛋2枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (18, 2, '7', '2020-03-13 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (19, 2, '7', '2020-03-14 00:00:00', '产蛋2枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (20, 2, '7', '2020-03-15 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (21, 2, '7', '2020-03-16 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (22, 2, '7', '2020-03-17 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (23, 2, '7', '2020-03-18 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (24, 2, '7', '2020-03-19 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (25, 2, '7', '2020-03-20 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (26, 2, '7', '2020-03-21 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (27, 2, '7', '2020-03-22 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (28, 2, '7', '2020-03-23 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (29, 2, '7', '2020-03-24 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (30, 2, '7', '2020-03-25 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (31, 2, '7', '2020-03-26 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (32, 2, '7', '2020-03-27 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (33, 2, '7', '2020-03-28 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (34, 2, '7', '2020-03-29 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (35, 2, '7', '2020-03-30 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (36, 2, '7', '2020-03-31 00:00:00', '产蛋1枚');
INSERT INTO `2020rg_group9_animalbreedrecord` VALUES (37, 2, '7', '2020-04-01 00:00:00', NULL);

-- ----------------------------
-- Table structure for 2020rg_group9_animalfeedrecord
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_animalfeedrecord`;
CREATE TABLE `2020rg_group9_animalfeedrecord`  (
  `id` int(11) NOT NULL COMMENT '饲养记录号',
  `archiveNumber` int(11) NULL DEFAULT NULL COMMENT '饲养记录表编号',
  `Recorder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录员',
  `RecordDate` datetime(0) NULL DEFAULT NULL COMMENT '记录日期',
  `StatusBeforeFeed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '饲养前状态',
  `FeedObject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '饲养物',
  `FeedProcess` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '饲养过程',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FeedRecordNumber`(`archiveNumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_animalfeedrecord
-- ----------------------------
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (1, 1, '4', '2020-03-03 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (2, 2, '6', '2020-01-03 00:00:00', '食欲良好，健康', '能量饲料', '采食量80g');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (3, 3, '6', '2020-01-03 15:19:11', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (4, 4, '6', '2020-01-03 15:14:58', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (5, 5, '6', '2020-01-03 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (6, 6, '6', '2020-01-07 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (7, 7, '6', '2020-01-08 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (8, 8, '4', '2020-01-09 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (9, 9, '6', '2020-01-10 00:00:00', '食欲不振', '蛋白质补充料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (10, 10, '6', '2020-01-11 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (11, 11, '4', '2020-01-12 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (12, 12, '6', '2020-01-13 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (13, 13, '4', '2020-01-14 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (14, 14, '6', '2020-01-15 00:00:00', '食欲不振', '蛋白质补充料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (15, 15, '6', '2020-01-16 00:00:00', '食欲不振', '蛋白质补充料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (16, 16, '4', '2020-01-17 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (17, 17, '6', '2020-01-18 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (18, 18, '4', '2020-01-19 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (19, 19, '6', '2020-01-20 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (20, 20, '6', '2020-01-21 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (21, 21, '4', '2020-01-22 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (22, 22, '6', '2020-01-23 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (23, 23, '4', '2020-01-24 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (24, 24, '6', '2020-01-25 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (25, 25, '6', '2020-01-26 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (26, 26, '4', '2020-01-27 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (27, 27, '6', '2020-03-01 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (28, 28, '4', '2020-03-02 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (29, 29, '6', '2020-03-03 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (30, 30, '6', '2020-03-04 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (31, 31, '4', '2020-03-05 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (32, 32, '6', '2020-03-06 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (33, 33, '4', '2020-03-07 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (34, 34, '6', '2020-03-08 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (35, 35, '6', '2020-03-09 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (36, 36, '4', '2020-03-10 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (37, 37, '6', '2020-03-11 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (38, 38, '4', '2020-03-12 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (39, 39, '6', '2020-03-13 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (40, 40, '6', '2020-03-14 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (41, 41, '4', '2020-03-15 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (42, 42, '6', '2020-03-16 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (43, 43, '4', '2020-03-17 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (44, 44, '6', '2020-03-18 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (45, 45, '6', '2020-03-19 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (46, 46, '4', '2020-03-20 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (47, 47, '6', '2020-03-21 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (48, 48, '4', '2020-03-22 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (49, 49, '6', '2020-03-23 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (50, 50, '6', '2020-03-24 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (51, 51, '4', '2020-03-04 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (52, 52, '6', '2020-03-09 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (53, 53, '4', '2020-03-10 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (54, 54, '6', '2020-03-11 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (55, 55, '6', '2020-03-12 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (56, 6, '4', '2020-03-13 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (57, 7, '6', '2020-03-14 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (58, 8, '4', '2020-03-15 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (59, 9, '6', '2020-03-16 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (60, 10, '6', '2020-03-17 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (61, 1, '6', '2020-03-05 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (62, 2, '6', '2020-01-04 00:00:00', '食欲良好，健康', '能量饲料', '采食量80g');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (63, 3, '6', '2020-01-04 15:19:11', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (64, 4, '6', '2020-01-04 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (65, 5, '6', '2020-01-04 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (66, 1, '6', '2020-03-06 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (67, 2, '6', '2020-01-05 00:00:00', '食欲良好，健康', '能量饲料', '采食量80g');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (68, 3, '6', '2020-01-05 15:19:11', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (69, 4, '6', '2020-01-05 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (70, 5, '6', '2020-01-05 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (71, 1, '6', '2020-03-07 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (72, 2, '6', '2020-01-06 00:00:00', '食欲良好，健康', '能量饲料', '采食量80g');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (73, 3, '6', '2020-01-06 15:19:11', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (74, 4, '6', '2020-01-06 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (75, 5, '6', '2020-01-06 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (76, 1, '6', '2020-03-08 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (77, 2, '6', '2020-01-07 00:00:00', '食欲良好，健康', '能量饲料', '采食量80g');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (78, 3, '6', '2020-01-07 15:19:11', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (79, 4, '6', '2020-01-07 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (80, 5, '6', '2020-01-07 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (81, 1, '6', '2020-03-09 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (82, 2, '6', '2020-01-08 00:00:00', '食欲良好，健康', '能量饲料', '采食量80g');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (84, 3, '6', '2020-01-08 15:19:11', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (85, 4, '6', '2020-01-08 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (86, 5, '6', '2020-01-08 15:20:08', '食欲良好，健康的', '能量饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (87, 15, '4', '2020-01-17 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (88, 16, '4', '2020-01-18 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (89, 15, '4', '2020-01-18 00:00:00', '食欲良好，健康', '能量饲料', '每次3~4次，4.5斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (90, 16, '4', '2020-01-19 00:00:00', '食欲良好，健康', '粗饲料', '每次3~4次，4斤/天');
INSERT INTO `2020rg_group9_animalfeedrecord` VALUES (91, 1, '50', '2019-10-01 00:00:00', '啊实打实的', '阿大撒大撒', '阿德飒飒打');

-- ----------------------------
-- Table structure for 2020rg_group9_animalhealthrecord
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_animalhealthrecord`;
CREATE TABLE `2020rg_group9_animalhealthrecord`  (
  `id` int(11) NOT NULL COMMENT '健康记录号',
  `archiveNumber` int(11) NULL DEFAULT NULL COMMENT '健康记录表编号',
  `Recorder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录员',
  `RecordDate` datetime(0) NULL DEFAULT NULL COMMENT '记录日期',
  `HealthLevel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康水平（健康/生病）',
  `HealthDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `HealthRecordNumber`(`archiveNumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_animalhealthrecord
-- ----------------------------
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (1, 1, '4', '2020-01-01 21:05:25', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (2, 2, '5', '2020-01-01 21:02:29', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (3, 3, '50', '2020-07-21 11:04:38', '生病', '食欲不振，出现拒食现象');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (4, 4, '5', '2020-01-01 15:57:27', '生病', '双眼有流泪现象，眼屎较多');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (5, 5, '5', '2020-01-01 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (6, 6, '50', '2020-07-20 20:19:23', '生病', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (7, 7, '50', '2020-07-20 20:19:35', '生病', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (8, 8, '5', '2020-01-09 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (9, 9, '5', '2020-01-10 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (10, 10, '4', '2020-01-11 00:00:00', '生病', '食欲不振，出现拒食现象');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (11, 11, '5', '2020-01-12 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (12, 12, '4', '2020-01-13 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (13, 13, '5', '2020-01-14 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (14, 14, '4', '2020-01-15 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (15, 15, '5', '2020-01-16 00:00:00', '生病', '粪便中存在寄生虫');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (16, 16, '4', '2020-01-17 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (17, 17, '5', '2020-01-18 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (18, 18, '4', '2020-01-19 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (19, 19, '5', '2020-01-20 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (20, 20, '4', '2020-01-21 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (21, 21, '4', '2020-01-22 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (22, 22, '5', '2020-01-23 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (23, 23, '5', '2020-01-24 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (24, 24, '5', '2020-01-25 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (25, 25, '4', '2020-01-26 00:00:00', '生病', '食欲不振，出现拒食现象');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (26, 26, '5', '2020-01-27 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (27, 27, '5', '2020-03-01 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (28, 28, '5', '2020-03-02 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (29, 29, '4', '2020-03-03 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (30, 30, '5', '2020-03-04 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (31, 31, '5', '2020-03-05 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (32, 32, '5', '2020-03-06 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (33, 33, '4', '2020-03-07 00:00:00', '生病', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (34, 34, '5', '2020-03-08 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (35, 35, '5', '2020-03-09 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (36, 36, '5', '2020-03-10 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (37, 37, '4', '2020-03-11 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (38, 38, '5', '2020-03-12 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (39, 39, '5', '2020-03-13 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (40, 40, '5', '2020-03-14 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (41, 41, '4', '2020-03-15 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (42, 42, '5', '2020-03-16 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (43, 43, '5', '2020-03-17 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (44, 44, '5', '2020-03-18 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (45, 45, '4', '2020-03-19 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (46, 46, '5', '2020-03-20 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (47, 47, '5', '2020-03-21 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (48, 48, '5', '2020-03-22 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (49, 49, '4', '2020-03-23 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (50, 50, '5', '2020-03-24 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (51, 1, '5', '2020-03-18 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (52, 2, '5', '2020-03-19 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (53, 3, '4', '2020-03-20 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (54, 4, '5', '2020-03-21 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (55, 5, '5', '2020-03-22 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (56, 6, '5', '2020-03-23 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (57, 7, '4', '2020-03-24 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (58, 1, '4', '2020-01-02 21:05:25', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (59, 2, '5', '2020-01-02 21:02:29', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (60, 3, '4', '2020-01-02 15:29:21', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (61, 4, '5', '2020-01-02 15:57:27', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (62, 5, '5', '2020-01-02 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (63, 1, '4', '2020-01-03 21:05:25', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (64, 2, '5', '2020-01-03 21:02:29', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (65, 3, '4', '2020-01-03 15:29:21', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (66, 4, '5', '2020-01-03 15:57:27', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (67, 5, '5', '2020-01-03 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (68, 1, '4', '2020-01-04 21:05:25', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (69, 2, '5', '2020-01-04 21:02:29', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (70, 3, '4', '2020-01-04 15:29:21', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (71, 4, '5', '2020-01-04 15:57:27', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (72, 5, '5', '2020-01-04 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (73, 1, '4', '2020-01-05 21:05:25', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (74, 2, '5', '2020-01-05 21:02:29', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (75, 3, '4', '2020-01-05 15:29:21', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (76, 4, '5', '2020-01-05 15:57:27', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽的');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (77, 5, '5', '2020-01-05 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (78, 15, '4', '2020-01-17 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (79, 16, '4', '2020-01-18 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (80, 15, '4', '2020-01-18 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (81, 16, '4', '2020-01-19 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (82, 15, '4', '2020-01-19 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');
INSERT INTO `2020rg_group9_animalhealthrecord` VALUES (83, 16, '4', '2020-01-20 00:00:00', '健康', '对外界刺激反应敏捷，食欲正常，毛色亮泽');

-- ----------------------------
-- Table structure for 2020rg_group9_archiveoperatelog
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_archiveoperatelog`;
CREATE TABLE `2020rg_group9_archiveoperatelog`  (
  `id` int(11) NOT NULL COMMENT '操作号',
  `Opcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作方式码（01234）（0代表档案初始化、1234数据增删改查）',
  `Operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作员ID',
  `OperatorDept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作员部门',
  `OperateReason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作原因',
  `OperateRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_archiveoperatelog
-- ----------------------------
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (1, '0', '11', '建档部', '档案初始化', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (2, '0', '12', '建档部', '档案初始化', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (3, '0', '13', '建档部', '档案初始化', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (4, '0', '11', '建档部', '档案初始化', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (5, '0', '12', '建档部', '档案初始化', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (6, '0', '13', '建档部', '档案初始化', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (7, '0', '11', '建档部', '档案初始化', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (8, '0', '12', '建档部', '档案初始化', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (9, '0', '13', '建档部', '档案初始化', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (10, '1', '1', '实验室', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (11, '1', '2', '实验室', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (12, '1', '3', '实验室', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (13, '1', '4', '动物房', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (14, '1', '5', '动物房', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (15, '1', '6', '动物房', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (16, '1', '7', '动物房', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (17, '1', '14', '转平台', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (18, '1', '15', '转平台', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (19, '1', '1', '实验室', '增加数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (20, '2', '2', '实验室', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (21, '2', '3', '实验室', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (22, '2', '4', '动物房', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (23, '2', '5', '动物房', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (24, '2', '6', '动物房', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (25, '2', '7', '动物房', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (26, '2', '14', '转平台', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (27, '2', '15', '转平台', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (28, '2', '1', '实验室', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (29, '2', '2', '实验室', '删除多余数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (30, '3', '3', '实验室', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (31, '3', '4', '动物房', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (32, '3', '5', '动物房', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (33, '3', '6', '动物房', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (34, '3', '7', '动物房', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (35, '3', '14', '转平台', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (36, '3', '15', '转平台', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (37, '3', '1', '实验室', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (38, '3', '2', '实验室', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (39, '3', '3', '实验室', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (40, '4', '4', '动物房', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (41, '4', '5', '动物房', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (42, '4', '6', '动物房', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (43, '4', '7', '动物房', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (44, '4', '14', '转平台', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (45, '4', '15', '转平台', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (46, '4', '1', '实验室', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (47, '4', '2', '实验室', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (48, '4', '3', '实验室', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (49, '4', '4', '动物房', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (50, '5', '8', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (51, '5', '9', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (52, '5', '10', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (53, '5', '8', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (54, '5', '9', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (55, '5', '10', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (56, '5', '8', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (57, '5', '9', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (58, '5', '10', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (59, '5', '8', '业务部', '查询数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (60, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (61, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (62, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (63, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (64, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (65, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (66, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (67, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (68, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (69, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (70, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (71, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (72, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (73, '3', '50', '所有', '更新数据', '无');
INSERT INTO `2020rg_group9_archiveoperatelog` VALUES (74, '3', '50', '所有', '更新数据', '无');

-- ----------------------------
-- Table structure for 2020rg_group9_authorizationprotocorecord
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_authorizationprotocorecord`;
CREATE TABLE `2020rg_group9_authorizationprotocorecord`  (
  `AuthozAgreeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '授权协议编号',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户号',
  `archiveNumber` int(11) NULL DEFAULT NULL COMMENT '动物档案编号',
  `ResponsiblePerson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '责任人编号，uid外键',
  `StoreAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存放位置',
  `BusinessDate` datetime(0) NULL DEFAULT NULL COMMENT '签订日期',
  PRIMARY KEY (`AuthozAgreeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_authorizationprotocorecord
-- ----------------------------
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (1, '16', 1, '8', '1柜下层', '2020-04-01 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (2, '16', 2, '9', '1柜中层', '2020-04-02 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (3, '16', 3, '10', '2柜上层', '2020-04-03 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (4, '16', 4, '8', '1柜下层', '2020-04-04 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (5, '16', 5, '9', '3柜上层', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (6, '19', 12, '10', '1柜中层', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (7, '19', 13, '8', '1柜下层', '2020-04-07 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (8, '19', 14, '9', '2柜中层', '2020-04-08 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (9, '20', 15, '10', '2柜中层', '2020-04-09 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (10, '20', 16, '10', '1柜上层', '2020-04-10 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (11, '20', 17, '8', '1柜下层', '2020-04-11 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (12, '24', 25, '9', '1柜中层', '2020-04-12 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (13, '24', 26, '10', '2柜上层', '2020-04-13 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (14, '25', 27, '8', '1柜下层', '2020-04-14 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (15, '25', 28, '9', '3柜上层', '2020-04-15 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (16, '27', 31, '10', '1柜中层', '2020-04-16 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (17, '27', 32, '8', '1柜下层', '2020-04-17 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (18, '27', 33, '9', '2柜中层', '2020-04-18 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (19, '28', 36, '10', '2柜中层', '2020-04-19 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (20, '28', 37, '10', '1柜上层', '2020-04-20 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (21, '28', 38, '8', '1柜下层', '2020-04-21 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (22, '29', 41, '9', '1柜中层', '2020-04-22 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (23, '29', 42, '10', '2柜上层', '2020-04-23 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (24, '29', 43, '8', '1柜下层', '2020-04-24 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (25, '30', 46, '9', '3柜上层', '2020-04-25 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (26, '30', 47, '10', '1柜中层', '2020-04-26 00:00:00');
INSERT INTO `2020rg_group9_authorizationprotocorecord` VALUES (27, '30', 48, '8', '1柜下层', '2020-04-27 00:00:00');

-- ----------------------------
-- Table structure for 2020rg_group9_experimentdata
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_experimentdata`;
CREATE TABLE `2020rg_group9_experimentdata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实验记录号',
  `ExperimentNumber` int(11) NULL DEFAULT NULL COMMENT '实验记录表编号',
  `ExperimenterNumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验者编号，uid',
  `ExperimentPurpose` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验目的',
  `ExperimentLocation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验地点',
  `ExperimentApproach` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验方案',
  `ExperimentRecord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验过程',
  `ExperimentResult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验结果',
  `ExperimentNote` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验备注',
  `ExperimentDate` datetime(0) NULL DEFAULT NULL COMMENT '实验日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ExperimentNumber`(`ExperimentNumber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_experimentdata
-- ----------------------------
INSERT INTO `2020rg_group9_experimentdata` VALUES (1, 1, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-01 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (2, 2, '2', '对乌蒙风鸡进行遗传特性、连锁不平衡、单倍型、双倍型和生物信息学分析', '实验室101', '以乌蒙凤鸡为研究对象，采用PCR产物直接测序法对FGF23基因进行SNP位点筛查', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算对乌蒙风鸡进行生物信息学分析', '生物信息学分析发现，FGF23基因的核心启动子区域很可能在-400～-300bp处，本研究发现的3个SNPs位点不在核心启动子区', '无', '2020-03-01 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (3, 3, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合的', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-01 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (4, 4, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-01 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (5, 5, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-01 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (6, 6, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-01 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (7, 7, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-01 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (8, 8, '2', '获得湘村黑猪母猪繁殖性状', '实验室102', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.11', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (9, 9, '3', '获得湘村黑猪母猪繁殖性状', '实验室102', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.12', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (10, 10, '1', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室103', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (11, 11, '2', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室103', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (12, 12, '3', '获得湘村黑猪母猪繁殖性状', '实验室104', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.11', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (13, 13, '1', '获得湘村黑猪母猪繁殖性状', '实验室104', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.12', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (14, 14, '2', '获得湘村黑猪母猪繁殖性状', '实验室104', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.13', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (15, 15, '3', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室105', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (16, 16, '1', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室105', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (17, 17, '2', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室105', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (18, 18, '3', '选育金华猪种', '实验室106', '回交选配法', '在金华猪和大约克或长白猪杂交利用开发的基础上用金华猪种公猪进行回交选育', '生产出具有产仔多、肉质好、体型大、生长肥育性能和瘦肉率高且具有类似两头乌外貌毛色特征的金华猪', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (19, 19, '1', '选育金华猪种', '实验室106', '回交选配法', '在金华猪和大约克或长白猪杂交利用开发的基础上用金华猪种公猪进行回交选育', '生产出具有产仔多、肉质好、体型大、生长肥育性能和瘦肉率高且具有类似两头乌外貌毛色特征的金华猪', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (20, 20, '2', '选育金华猪种', '实验室106', '回交选配法', '在金华猪和大约克或长白猪杂交利用开发的基础上用金华猪种公猪进行回交选育', '生产出具有产仔多、肉质好、体型大、生长肥育性能和瘦肉率高且具有类似两头乌外貌毛色特征的金华猪', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (21, 21, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室107', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (22, 22, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室107', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (23, 23, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室107', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (24, 24, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室107', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (25, 25, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室107', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (26, 26, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室107', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (27, 27, '3', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室108', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (28, 28, '1', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室108', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出18种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (29, 29, '2', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室108', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出19种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (30, 30, '3', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室108', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出20种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (31, 31, '1', '选育金华猪种', '实验室109', '回交选配法', '在金华猪和大约克或长白猪杂交利用开发的基础上用金华猪种公猪进行回交选育', '生产出具有产仔多、肉质好、体型大、生长肥育性能和瘦肉率高且具有类似两头乌外貌毛色特征的金华猪', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (32, 32, '2', '选育金华猪种', '实验室109', '回交选配法', '在金华猪和大约克或长白猪杂交利用开发的基础上用金华猪种公猪进行回交选育', '生产出具有产仔多、肉质好、体型大、生长肥育性能和瘦肉率高且具有类似两头乌外貌毛色特征的金华猪', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (33, 33, '3', '选育金华猪种', '实验室109', '回交选配法', '在金华猪和大约克或长白猪杂交利用开发的基础上用金华猪种公猪进行回交选育', '生产出具有产仔多、肉质好、体型大、生长肥育性能和瘦肉率高且具有类似两头乌外貌毛色特征的金华猪', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (34, 34, '1', '选育金华猪种', '实验室109', '回交选配法', '在金华猪和大约克或长白猪杂交利用开发的基础上用金华猪种公猪进行回交选育', '生产出具有产仔多、肉质好、体型大、生长肥育性能和瘦肉率高且具有类似两头乌外貌毛色特征的金华猪', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (35, 35, '2', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室110', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出18种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (36, 36, '3', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室110', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出19种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (37, 37, '1', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室110', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出20种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (38, 38, '2', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室110', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出21种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (39, 39, '3', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室110', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出22种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (40, 40, '1', '测定八眉猪背肌、腹肌两个部位中的氨基酸含量', '实验室110', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌与腹肌两部位共检出23种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (41, 41, '2', '获得湘村黑猪母猪繁殖性状', '实验室111', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.12', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (42, 42, '3', '获得湘村黑猪母猪繁殖性状', '实验室111', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.13', '无', '2020-04-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (43, 43, '1', '获得湘村黑猪母猪繁殖性状', '实验室111', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.14', '无', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (44, 44, '2', '获得湘村黑猪母猪繁殖性状', '实验室111', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.15', '无', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (45, 45, '3', '获得湘村黑猪母猪繁殖性状', '实验室111', '测定相关数据后，应用多性状非求导约束最大似然法进行遗传参数估计', '首先测定数据，再进行遗传参数估计', '窝产仔数(TNB)、产活仔数(NBA)、初生窝重(LW)和21日龄窝重(LW21)的遗传力分别是0.19、0.15、0.07、0.16', '无', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (46, 46, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室112', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (47, 47, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室112', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (48, 48, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室112', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (49, 49, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室112', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (50, 50, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室112', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-04-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (51, 1, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (52, 2, '2', '对乌蒙风鸡进行遗传特性、连锁不平衡、单倍型、双倍型和生物信息学分析', '实验室101', '以乌蒙凤鸡为研究对象，采用PCR产物直接测序法对FGF23基因进行SNP位点筛查', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算对乌蒙风鸡进行生物信息学分析', '生物信息学分析发现，FGF23基因的核心启动子区域很可能在-400～-300bp处，本研究发现的3个SNPs位点不在核心启动子区', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (53, 3, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合的', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (54, 4, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (55, 5, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-02 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (56, 1, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (57, 2, '2', '对乌蒙风鸡进行遗传特性、连锁不平衡、单倍型、双倍型和生物信息学分析', '实验室101', '以乌蒙凤鸡为研究对象，采用PCR产物直接测序法对FGF23基因进行SNP位点筛查', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算对乌蒙风鸡进行生物信息学分析', '生物信息学分析发现，FGF23基因的核心启动子区域很可能在-400～-300bp处，本研究发现的3个SNPs位点不在核心启动子区', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (58, 3, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合的', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (59, 4, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (60, 5, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (61, 1, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-04 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (62, 2, '2', '对乌蒙风鸡进行遗传特性、连锁不平衡、单倍型、双倍型和生物信息学分析', '实验室101', '以乌蒙凤鸡为研究对象，采用PCR产物直接测序法对FGF23基因进行SNP位点筛查', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算对乌蒙风鸡进行生物信息学分析', '生物信息学分析发现，FGF23基因的核心启动子区域很可能在-400～-300bp处，本研究发现的3个SNPs位点不在核心启动子区', '无', '2020-03-04 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (63, 3, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合的', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-04 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (64, 4, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-04 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (65, 5, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-04 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (66, 1, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (67, 2, '2', '对乌蒙风鸡进行遗传特性、连锁不平衡、单倍型、双倍型和生物信息学分析', '实验室101', '以乌蒙凤鸡为研究对象，采用PCR产物直接测序法对FGF23基因进行SNP位点筛查', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算对乌蒙风鸡进行生物信息学分析', '生物信息学分析发现，FGF23基因的核心启动子区域很可能在-400～-300bp处，本研究发现的3个SNPs位点不在核心启动子区', '无', '2020-03-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (68, 3, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合的', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (69, 4, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (70, 5, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-05 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (71, 1, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (72, 2, '2', '对乌蒙风鸡进行遗传特性、连锁不平衡、单倍型、双倍型和生物信息学分析', '实验室101', '以乌蒙凤鸡为研究对象，采用PCR产物直接测序法对FGF23基因进行SNP位点筛查', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算对乌蒙风鸡进行生物信息学分析', '生物信息学分析发现，FGF23基因的核心启动子区域很可能在-400～-300bp处，本研究发现的3个SNPs位点不在核心启动子区', '无', '2020-03-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (73, 3, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合的', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (74, 4, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (75, 5, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-06 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (76, 1, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-07 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (77, 2, '2', '对乌蒙风鸡进行遗传特性、连锁不平衡、单倍型、双倍型和生物信息学分析', '实验室101', '以乌蒙凤鸡为研究对象，采用PCR产物直接测序法对FGF23基因进行SNP位点筛查', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算对乌蒙风鸡进行生物信息学分析', '生物信息学分析发现，FGF23基因的核心启动子区域很可能在-400～-300bp处，本研究发现的3个SNPs位点不在核心启动子区', '无', '2020-03-07 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (78, 3, '3', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合的', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-07 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (79, 4, '1', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-07 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (80, 5, '2', '获得目前条件下最优沙子岭猪育种方案', '实验室101', '根据测定数据，对沙子岭猪的育种方案进行优化，选择最佳优化组合', '对沙子岭猪育种资料的整理,对沙子岭猪群体进行基础性研究,包括生长发育性状校正公式的制定、遗传参数的估算、边际效益的计算及简化综合育种值', 'Saturation模型为拟合沙子岭猪早期生长动态的最优模型', '无', '2020-03-07 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (81, 15, '3', '测定八眉猪背肌部位中的氨基酸含量', '实验室105', '分析氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (82, 16, '1', '测定八眉猪腹肌部位中的氨基酸含量', '实验室105', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪腹肌检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (83, 15, '3', '测定八眉猪背肌部位中的氨基酸含量', '实验室105', '分析氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (84, 16, '1', '测定八眉猪腹肌部位中的氨基酸含量', '实验室105', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪腹肌检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-03 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (85, 15, '3', '测定八眉猪背肌部位中的氨基酸含量', '实验室105', '分析氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪背肌检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-04 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (86, 16, '1', '测定八眉猪腹肌部位中的氨基酸含量', '实验室105', '分析其氨基酸种类与比例，并基于FAO/WHO模式，对其营养价值进行了评价', '先测定了八眉猪部分部位中的氨基酸含量，再分析氨基酸种类与比例', '八眉猪腹肌检出17种氨基酸，除含量存在显著差异外，其分布、比例、构成表现出一致性', '无', '2020-03-04 00:00:00');
INSERT INTO `2020rg_group9_experimentdata` VALUES (105, 2, '50', '阿萨大', '大苏打', '阿萨大', '111', '111', '111', '2020-10-01 00:00:00');

-- ----------------------------
-- Table structure for 2020rg_group9_user
-- ----------------------------
DROP TABLE IF EXISTS `2020rg_group9_user`;
CREATE TABLE `2020rg_group9_user`  (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `dept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  `authzArc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动物档案权限',
  `authzBas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动物基本信息权限',
  `authzExp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验信息表权限',
  `authzFed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '饲养记录表权限',
  `authzBre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '繁殖记录表权限',
  `authzHea` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康记录表权限',
  `authzAuthzManage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权管理权限',
  `authzAdvertsManage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推广管理权限',
  `buyArc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '所购档案编号',
  `belArc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属档案编号',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2020rg_group9_user
-- ----------------------------
INSERT INTO `2020rg_group9_user` VALUES ('1', 'ai1234567', '赵秀娟', '13073209827', '实验室', '河南省郑州市中原区悦之社区44号', '1', '1', '1', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('10', 'ji1234576', '陈强', '13434235874', '业务部', '河南省济源市天坛街道嘉美社区87号', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('11', 'ki1234577', '褚娜', '13432523843', '建档部', '河南省郑州市中原区海园社区49号', '1', '1', '0', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('12', 'li1234578', '卫军', '13444542874', '建档部', '河南省安阳市文峰区铭万社区41号', '1', '1', '0', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('13', 'mi1234579', '蒋静', '18748173647', '建档部', '河南省安阳市文峰区铭万社区42号', '1', '1', '0', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('14', 'ni1234580', '沈平', '18734287643', '转平台', '河南省商丘市梁园区荣平社区32号', '1', '1', '0', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('15', 'oi1234581', '韩淑', '18737264367', '转平台', '河南省郑州市中原区荣平社区14号', '1', '1', '0', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('16', 'pi1234582', '杨宝', '18723472463', '外部', '河南省商丘市梁园区荣平社区25号', '0', '0', '0', '0', '0', '0', '0', '0', '15,16,17,12,13,28,48,25', '1,2,3,4,5,6,7,51,52,53,54,55,56,57,58,58,60,61');
INSERT INTO `2020rg_group9_user` VALUES ('17', 'qi1234583', '朱惠珠', '18749572557', '外部', '河南省信阳市浉河区德胜社区97号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '8,9');
INSERT INTO `2020rg_group9_user` VALUES ('18', 'ri1234584', '秦东文', '18845823764', '外部', '河南省商丘市梁园区荣平社区38号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '10,11');
INSERT INTO `2020rg_group9_user` VALUES ('19', 'si1234585', '尤翠', '18824629848', '外部', '河南省商丘市梁园区荣平社区41号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '12,13,14');
INSERT INTO `2020rg_group9_user` VALUES ('2', 'bi1234568', '钱伟刚', '13073209828', '实验室', '河南省郑州市中原区凯源社区23号', '1', '1', '1', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('20', 'ti1234586', '许辉', '18836472647', '外部', '河南省商丘市梁园区荣平社区52号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '15,16,17');
INSERT INTO `2020rg_group9_user` VALUES ('21', 'ui1234587', '何雅芝', '18846362637', '外部', '河南省郑州市中原区海园社区25号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '18,19,20');
INSERT INTO `2020rg_group9_user` VALUES ('22', 'vi1234588', '吕力', '18849260674', '外部', '河南省安阳市文峰区铭万社区39号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '21,22');
INSERT INTO `2020rg_group9_user` VALUES ('23', 'wi1234589', '施明永', '15847288643', '外部', '河南省郑州市中原区海园社区28号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '23,24');
INSERT INTO `2020rg_group9_user` VALUES ('24', 'xi1234590', '张义', '15837252436', '外部', '河南省安阳市文峰区铭万社区34号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '25,26');
INSERT INTO `2020rg_group9_user` VALUES ('25', 'yi1234591', '孔兴', '15837253748', '外部', '河南省商丘市梁园区长丰社区32号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '27,28');
INSERT INTO `2020rg_group9_user` VALUES ('26', 'zi1234592', '曹良', '15837254637', '外部', '河南省商丘市梁园区长丰社区10号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '29,30');
INSERT INTO `2020rg_group9_user` VALUES ('27', 'ai1234593', '姜海', '15548236472', '外部', '河南省郑州市中原区启元社区99号', '0', '0', '0', '0', '0', '0', '0', '0', '14,15,16,17,1,2,12,13', '31,32,33,34,35');
INSERT INTO `2020rg_group9_user` VALUES ('28', 'bi1234594', '戚山', '15527352749', '外部', '河南省安阳市文峰区铭万社区40号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '36,37,38,39,40');
INSERT INTO `2020rg_group9_user` VALUES ('29', 'ci1234595', '谢仁', '15547284563', '外部', '河南省信阳市浉河区德胜社区17号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '41,42,43,44,45');
INSERT INTO `2020rg_group9_user` VALUES ('3', 'ci1234569', '孙英', '13073209834', '实验室', '河南省郑州市中原区悦之社区13号', '1', '1', '1', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('30', 'di1234596', '邹同', '15528475725', '外部', '河南省商丘市梁园区长丰社区33号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '46,47,48,49,50');
INSERT INTO `2020rg_group9_user` VALUES ('31', 'di1234597', '邵瑞凡', '15523487623', '外部', '河南省郑州市中原区海园社区49号', '0', '0', '0', '0', '0', '0', '0', '0', '1,2,3,4,5', NULL);
INSERT INTO `2020rg_group9_user` VALUES ('32', 'gi2234598', '湛胜', '13123413231', '外部', '河南省郑州市中原区海园社区95号', '0', '0', '0', '0', '0', '0', '0', '0', '12,13', NULL);
INSERT INTO `2020rg_group9_user` VALUES ('33', 'di2234599', '汪佳', '13145424652', '外部', '河南省安阳市文峰区铭万社区109号', '0', '0', '0', '0', '0', '0', '0', '0', '14,15', NULL);
INSERT INTO `2020rg_group9_user` VALUES ('34', 'di2234600', '祁学', '13196840968', '外部', '河南省郑州市中原区海园社区102号', '0', '0', '0', '0', '0', '0', '0', '0', '16,17', NULL);
INSERT INTO `2020rg_group9_user` VALUES ('35', 'li2234601', '毛嘉琼', '15626153847', '外部', '河南省安阳市文峰区铭万社区139号', '0', '0', '0', '0', '0', '0', '0', '0', '25,26,27,28', NULL);
INSERT INTO `2020rg_group9_user` VALUES ('36', 'di2234602', '禹祥', '15627274856', '外部', '河南省安阳市文峰区铭万社区129号', '0', '0', '0', '0', '0', '0', '0', '0', '31,32,33', NULL);
INSERT INTO `2020rg_group9_user` VALUES ('37', 'zd2234603', '狄勤', '18838103847', '外部', '河南省济源市天坛街道嘉美社区101号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('38', 'di2234604', '米珍', '18836253748', '外部', '河南省济源市天坛街道嘉美社区107号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('39', 'ti2234605', '贝才', '13736274859', '外部', '河南省济源市天坛街道嘉美社区108号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('4', 'di1234570', '李勇', '13073209887', '动物房', '河南省郑州市中原区凯源社区83号', '1', '1', '0', '1', '0', '1', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('40', 'mi2234606', '明发武', '13742648599', '外部', '河南省济源市天坛街道嘉美社区7号', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('5', 'ei1234571', '周华慧', '13163293874', '动物房', '河南省济源市天坛街道嘉美社区17号', '1', '1', '0', '0', '1', '1', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('50', 'root', '超级管理员', 'root', '所有', '宇宙', '1', '1', '1', '1', '1', '1', '1', '1', '', '');
INSERT INTO `2020rg_group9_user` VALUES ('51', 'root2', '超级管理员', 'root2', '外部', '宇宙', '1', '1', '1', '1', '1', '1', '1', '1', '', NULL);
INSERT INTO `2020rg_group9_user` VALUES ('6', 'fi1234572', '吴毅', '13163393874', '动物房', '河南省济源市天坛街道嘉美社区56号', '1', '1', '0', '1', '0', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('7', 'gi1234573', '郑巧', '13143203884', '动物房', '河南省济源市天坛街道嘉美社区27号', '1', '1', '0', '0', '1', '0', '0', '0', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('8', 'hi1234574', '王俊峰', '13153395827', '业务部', '河南省安阳市文峰区铭万社区52号', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL);
INSERT INTO `2020rg_group9_user` VALUES ('9', 'ii1234575', '冯美', '13434529874', '业务部', '河南省郑州市中原区海园社区45号', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
