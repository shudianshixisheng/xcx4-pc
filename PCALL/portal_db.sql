/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80043 (8.0.43)
 Source Host           : localhost:3306
 Source Schema         : portal_db

 Target Server Type    : MySQL
 Target Server Version : 80043 (8.0.43)
 File Encoding         : 65001

 Date: 13/12/2025 18:38:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', '$2a$10$7UTPBBsPNqMRLwDl1H0ZfODxwtMlW3nQVfHjLpaA9kfmiOs2Kc.rm', '2025-12-12 11:51:47');

-- ----------------------------
-- Table structure for bidding
-- ----------------------------
DROP TABLE IF EXISTS `bidding`;
CREATE TABLE `bidding`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `recommend` tinyint NULL DEFAULT 0,
  `views` int NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bidding
-- ----------------------------
INSERT INTO `bidding` VALUES (1, '智慧园区建设项目招标公告', '就智慧园区建设项目进行公开招标，欢迎符合条件的供应商参与投标。', '<h3>一、项目概况</h3><p>就智慧园区建设项目进行公开招标，欢迎符合条件的供应商参与投标。</p><h3>二、投标人资格要求</h3><ul><li>具有独立法人资格</li><li>具有相关行业资质</li></ul>', NULL, 0, 0, '2025-12-12 11:51:47', '2025-12-12 11:51:47');
INSERT INTO `bidding` VALUES (2, '数据中心设备采购招标公告', '现就数据中心服务器、存储设备等进行公开招标采购。', '<p>现就数据中心服务器、存储设备等进行公开招标采购。</p>', NULL, 0, 1, '2025-12-12 11:51:47', '2025-12-12 17:20:27');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `sort` int NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (1, '数字经济创新发展', 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=1200&h=400&fit=crop', '推动数字技术与实体经济深度融合，打造数字经济新高地', 1, '2025-12-12 11:51:47');
INSERT INTO `carousel` VALUES (2, '智慧城市建设', 'https://images.unsplash.com/photo-1480714378408-67cf0d13bc1b?w=1200&h=400&fit=crop', '构建城市数字化底座，赋能城市治理现代化', 2, '2025-12-12 11:51:47');
INSERT INTO `carousel` VALUES (3, '低空经济新赛道', 'https://images.unsplash.com/photo-1473968512647-3e447244af8f?w=1200&h=400&fit=crop', '开拓低空经济新蓝海，引领产业创新发展', 3, '2025-12-12 11:51:47');
INSERT INTO `carousel` VALUES (4, '1', '/uploads/1765599511668-22395sfdr.png', '1', 0, '2025-12-13 12:04:28');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `recommend` tinyint NULL DEFAULT 0,
  `views` int NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '公司成功签约数智城市项目1', '近日，公司与某市政府成功签约数智城市建设项目，将为城市数字化转型提供全方位解决方案。', '<p>近日，公司与某市政府成功签约数智城市建设项目，将为城市数字化转型提供全方位解决方案，助力智慧城市建设迈上新台阶。</p><p>本次签约的数智城市项目总投资额达数亿元，建设周期为三年，涵盖城市治理、公共服务、产业发展等多个领域。项目建成后，将显著提升城市运行效率和市民生活品质。</p>', 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=600&h=400&fit=crop', 1, 0, '2025-12-12 11:51:47', '2025-12-13 12:33:46');
INSERT INTO `news` VALUES (2, '低空经济发展规划正式发布', '公司发布低空经济发展规划，明确未来三年发展目标和重点任务。', '<p>公司发布低空经济发展规划，明确未来三年发展目标和重点任务，抢占低空经济新赛道。</p>', 'https://images.unsplash.com/photo-1473968512647-3e447244af8f?w=600&h=400&fit=crop', 1, 0, '2025-12-12 11:51:47', '2025-12-12 11:51:47');
INSERT INTO `news` VALUES (3, '数字经济供应链平台正式上线', '历时半年精心打造的数字经济供应链平台正式上线运营。', '<p>历时半年精心打造的数字经济供应链平台正式上线运营，为企业提供一站式数字化服务。</p>', 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=600&h=400&fit=crop', 1, 0, '2025-12-12 11:51:47', '2025-12-12 11:51:47');
INSERT INTO `news` VALUES (5, '1', '11', '<p>1</p>', '/uploads/1765600448443-4pwa1az6v.png', 1, 0, '2025-12-13 12:34:12', '2025-12-13 12:35:57');
INSERT INTO `news` VALUES (6, '1', '11', '<p>1</p>', '/uploads/1765600515682-9ebgb1hmx.png', 0, 0, '2025-12-13 12:35:19', '2025-12-13 12:35:19');
INSERT INTO `news` VALUES (7, '2', '2', '<p>2</p>', '/uploads/1765600538261-fabxnbcwz.png', 0, 0, '2025-12-13 12:35:41', '2025-12-13 12:35:41');

-- ----------------------------
-- Table structure for party
-- ----------------------------
DROP TABLE IF EXISTS `party`;
CREATE TABLE `party`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `recommend` tinyint NULL DEFAULT 0,
  `views` int NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of party
-- ----------------------------
INSERT INTO `party` VALUES (1, '党支部开展\"学思想、强党性\"主题党日活动', '公司党支部组织全体党员开展主题党日活动，深入学习党的创新理论。', '<p>为深入学习贯彻习近平新时代中国特色社会主义思想，公司党支部组织全体党员开展\"学思想、强党性\"主题党日活动。</p>', 'https://images.unsplash.com/photo-1529107386315-e1a2ed48a620?w=600&h=400&fit=crop', 1, 0, '2025-12-12 11:51:47', '2025-12-12 11:51:47');
INSERT INTO `party` VALUES (2, '深入学习贯彻党的二十大精神', '公司组织专题学习会，深入学习贯彻党的二十大精神。', '<p>公司组织专题学习会，深入学习贯彻党的二十大精神。</p>', 'https://images.unsplash.com/photo-1577495508048-b635879837f1?w=600&h=400&fit=crop', 1, 0, '2025-12-12 11:51:47', '2025-12-12 11:51:47');
INSERT INTO `party` VALUES (3, '党员志愿服务进社区', '公司党员志愿者走进社区，开展数字技能培训志愿服务活动。', '<p>公司党员志愿者走进社区，开展数字技能培训志愿服务活动。</p>', 'https://images.unsplash.com/photo-1559027615-cd4628902d4a?w=600&h=400&fit=crop', 0, 0, '2025-12-12 11:51:47', '2025-12-12 11:51:47');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `progress` int NULL DEFAULT 0,
  `recommend` tinyint NULL DEFAULT 0,
  `views` int NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, '数智城市一期项目', '项目已完成需求分析和系统设计阶段，正在进行核心模块开发。', '<h3>项目概述</h3><p>数智城市一期项目旨在构建城市数字化底座。</p><h3>当前进度</h3><p>整体进度：65%</p>', NULL, 65, 0, 0, '2025-12-12 11:51:47', '2025-12-12 11:51:47');
INSERT INTO `project` VALUES (2, '低空经济平台建设', '平台架构设计已完成，正在进行飞行监管模块开发测试。', '<p>平台架构设计已完成，正在进行飞行监管模块开发测试。</p>', NULL, 40, 0, 0, '2025-12-12 11:51:47', '2025-12-12 11:51:47');
INSERT INTO `project` VALUES (3, '供应链数字化改造', '已完成供应商管理模块上线，正在推进物流跟踪功能开发。', '<p>已完成供应商管理模块上线。</p>', NULL, 80, 0, 0, '2025-12-12 11:51:47', '2025-12-12 11:51:47');

SET FOREIGN_KEY_CHECKS = 1;
