/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : service_integral_1

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 26/05/2022 20:44:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for integral_record_2022_1
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_1`;
CREATE TABLE `integral_record_2022_1`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_10
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_10`;
CREATE TABLE `integral_record_2022_10`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_100
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_100`;
CREATE TABLE `integral_record_2022_100`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_101
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_101`;
CREATE TABLE `integral_record_2022_101`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_102
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_102`;
CREATE TABLE `integral_record_2022_102`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_103
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_103`;
CREATE TABLE `integral_record_2022_103`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_104
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_104`;
CREATE TABLE `integral_record_2022_104`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_105
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_105`;
CREATE TABLE `integral_record_2022_105`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_106
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_106`;
CREATE TABLE `integral_record_2022_106`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_107
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_107`;
CREATE TABLE `integral_record_2022_107`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_108
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_108`;
CREATE TABLE `integral_record_2022_108`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_109
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_109`;
CREATE TABLE `integral_record_2022_109`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_11
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_11`;
CREATE TABLE `integral_record_2022_11`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_110
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_110`;
CREATE TABLE `integral_record_2022_110`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_111
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_111`;
CREATE TABLE `integral_record_2022_111`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_112
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_112`;
CREATE TABLE `integral_record_2022_112`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_113
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_113`;
CREATE TABLE `integral_record_2022_113`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_114
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_114`;
CREATE TABLE `integral_record_2022_114`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_115
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_115`;
CREATE TABLE `integral_record_2022_115`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_116
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_116`;
CREATE TABLE `integral_record_2022_116`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_117
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_117`;
CREATE TABLE `integral_record_2022_117`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_118
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_118`;
CREATE TABLE `integral_record_2022_118`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_119
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_119`;
CREATE TABLE `integral_record_2022_119`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_12
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_12`;
CREATE TABLE `integral_record_2022_12`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_120
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_120`;
CREATE TABLE `integral_record_2022_120`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_121
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_121`;
CREATE TABLE `integral_record_2022_121`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_122
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_122`;
CREATE TABLE `integral_record_2022_122`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_123
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_123`;
CREATE TABLE `integral_record_2022_123`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_124
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_124`;
CREATE TABLE `integral_record_2022_124`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_125
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_125`;
CREATE TABLE `integral_record_2022_125`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_126
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_126`;
CREATE TABLE `integral_record_2022_126`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_127
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_127`;
CREATE TABLE `integral_record_2022_127`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_128
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_128`;
CREATE TABLE `integral_record_2022_128`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_129
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_129`;
CREATE TABLE `integral_record_2022_129`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_13
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_13`;
CREATE TABLE `integral_record_2022_13`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_130
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_130`;
CREATE TABLE `integral_record_2022_130`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_131
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_131`;
CREATE TABLE `integral_record_2022_131`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_132
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_132`;
CREATE TABLE `integral_record_2022_132`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_133
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_133`;
CREATE TABLE `integral_record_2022_133`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_134
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_134`;
CREATE TABLE `integral_record_2022_134`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_135
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_135`;
CREATE TABLE `integral_record_2022_135`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_136
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_136`;
CREATE TABLE `integral_record_2022_136`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_137
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_137`;
CREATE TABLE `integral_record_2022_137`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_138
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_138`;
CREATE TABLE `integral_record_2022_138`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_139
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_139`;
CREATE TABLE `integral_record_2022_139`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_14
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_14`;
CREATE TABLE `integral_record_2022_14`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_140
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_140`;
CREATE TABLE `integral_record_2022_140`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_141
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_141`;
CREATE TABLE `integral_record_2022_141`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_142
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_142`;
CREATE TABLE `integral_record_2022_142`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_143
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_143`;
CREATE TABLE `integral_record_2022_143`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_144
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_144`;
CREATE TABLE `integral_record_2022_144`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_145
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_145`;
CREATE TABLE `integral_record_2022_145`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_146
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_146`;
CREATE TABLE `integral_record_2022_146`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_147
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_147`;
CREATE TABLE `integral_record_2022_147`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_148
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_148`;
CREATE TABLE `integral_record_2022_148`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_149
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_149`;
CREATE TABLE `integral_record_2022_149`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_15
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_15`;
CREATE TABLE `integral_record_2022_15`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_150
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_150`;
CREATE TABLE `integral_record_2022_150`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_151
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_151`;
CREATE TABLE `integral_record_2022_151`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_152
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_152`;
CREATE TABLE `integral_record_2022_152`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_153
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_153`;
CREATE TABLE `integral_record_2022_153`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_154
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_154`;
CREATE TABLE `integral_record_2022_154`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_155
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_155`;
CREATE TABLE `integral_record_2022_155`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_156
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_156`;
CREATE TABLE `integral_record_2022_156`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_157
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_157`;
CREATE TABLE `integral_record_2022_157`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_158
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_158`;
CREATE TABLE `integral_record_2022_158`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_159
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_159`;
CREATE TABLE `integral_record_2022_159`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_16
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_16`;
CREATE TABLE `integral_record_2022_16`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_160
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_160`;
CREATE TABLE `integral_record_2022_160`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_161
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_161`;
CREATE TABLE `integral_record_2022_161`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_162
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_162`;
CREATE TABLE `integral_record_2022_162`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_163
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_163`;
CREATE TABLE `integral_record_2022_163`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_164
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_164`;
CREATE TABLE `integral_record_2022_164`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_165
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_165`;
CREATE TABLE `integral_record_2022_165`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_166
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_166`;
CREATE TABLE `integral_record_2022_166`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_167
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_167`;
CREATE TABLE `integral_record_2022_167`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_168
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_168`;
CREATE TABLE `integral_record_2022_168`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_169
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_169`;
CREATE TABLE `integral_record_2022_169`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_17
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_17`;
CREATE TABLE `integral_record_2022_17`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_170
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_170`;
CREATE TABLE `integral_record_2022_170`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_171
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_171`;
CREATE TABLE `integral_record_2022_171`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_172
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_172`;
CREATE TABLE `integral_record_2022_172`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_173
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_173`;
CREATE TABLE `integral_record_2022_173`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_174
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_174`;
CREATE TABLE `integral_record_2022_174`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_175
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_175`;
CREATE TABLE `integral_record_2022_175`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_176
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_176`;
CREATE TABLE `integral_record_2022_176`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_177
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_177`;
CREATE TABLE `integral_record_2022_177`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_178
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_178`;
CREATE TABLE `integral_record_2022_178`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_179
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_179`;
CREATE TABLE `integral_record_2022_179`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_18
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_18`;
CREATE TABLE `integral_record_2022_18`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_180
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_180`;
CREATE TABLE `integral_record_2022_180`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_181
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_181`;
CREATE TABLE `integral_record_2022_181`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_182
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_182`;
CREATE TABLE `integral_record_2022_182`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_183
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_183`;
CREATE TABLE `integral_record_2022_183`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_184
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_184`;
CREATE TABLE `integral_record_2022_184`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_185
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_185`;
CREATE TABLE `integral_record_2022_185`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_186
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_186`;
CREATE TABLE `integral_record_2022_186`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_187
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_187`;
CREATE TABLE `integral_record_2022_187`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_188
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_188`;
CREATE TABLE `integral_record_2022_188`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_189
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_189`;
CREATE TABLE `integral_record_2022_189`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_19
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_19`;
CREATE TABLE `integral_record_2022_19`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_190
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_190`;
CREATE TABLE `integral_record_2022_190`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_191
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_191`;
CREATE TABLE `integral_record_2022_191`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_192
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_192`;
CREATE TABLE `integral_record_2022_192`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_193
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_193`;
CREATE TABLE `integral_record_2022_193`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_194
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_194`;
CREATE TABLE `integral_record_2022_194`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_195
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_195`;
CREATE TABLE `integral_record_2022_195`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_196
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_196`;
CREATE TABLE `integral_record_2022_196`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_197
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_197`;
CREATE TABLE `integral_record_2022_197`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_198
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_198`;
CREATE TABLE `integral_record_2022_198`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_199
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_199`;
CREATE TABLE `integral_record_2022_199`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_2
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_2`;
CREATE TABLE `integral_record_2022_2`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_20
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_20`;
CREATE TABLE `integral_record_2022_20`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_200
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_200`;
CREATE TABLE `integral_record_2022_200`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_201
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_201`;
CREATE TABLE `integral_record_2022_201`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_202
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_202`;
CREATE TABLE `integral_record_2022_202`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_203
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_203`;
CREATE TABLE `integral_record_2022_203`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_204
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_204`;
CREATE TABLE `integral_record_2022_204`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_205
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_205`;
CREATE TABLE `integral_record_2022_205`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_206
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_206`;
CREATE TABLE `integral_record_2022_206`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_207
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_207`;
CREATE TABLE `integral_record_2022_207`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_208
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_208`;
CREATE TABLE `integral_record_2022_208`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_209
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_209`;
CREATE TABLE `integral_record_2022_209`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_21
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_21`;
CREATE TABLE `integral_record_2022_21`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_210
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_210`;
CREATE TABLE `integral_record_2022_210`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_211
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_211`;
CREATE TABLE `integral_record_2022_211`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_212
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_212`;
CREATE TABLE `integral_record_2022_212`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_213
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_213`;
CREATE TABLE `integral_record_2022_213`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_214
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_214`;
CREATE TABLE `integral_record_2022_214`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_215
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_215`;
CREATE TABLE `integral_record_2022_215`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_216
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_216`;
CREATE TABLE `integral_record_2022_216`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_217
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_217`;
CREATE TABLE `integral_record_2022_217`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_218
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_218`;
CREATE TABLE `integral_record_2022_218`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_219
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_219`;
CREATE TABLE `integral_record_2022_219`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_22
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_22`;
CREATE TABLE `integral_record_2022_22`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_220
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_220`;
CREATE TABLE `integral_record_2022_220`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_221
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_221`;
CREATE TABLE `integral_record_2022_221`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_222
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_222`;
CREATE TABLE `integral_record_2022_222`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_223
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_223`;
CREATE TABLE `integral_record_2022_223`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_224
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_224`;
CREATE TABLE `integral_record_2022_224`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_225
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_225`;
CREATE TABLE `integral_record_2022_225`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_226
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_226`;
CREATE TABLE `integral_record_2022_226`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_227
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_227`;
CREATE TABLE `integral_record_2022_227`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_228
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_228`;
CREATE TABLE `integral_record_2022_228`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_229
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_229`;
CREATE TABLE `integral_record_2022_229`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_23
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_23`;
CREATE TABLE `integral_record_2022_23`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_230
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_230`;
CREATE TABLE `integral_record_2022_230`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_231
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_231`;
CREATE TABLE `integral_record_2022_231`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_232
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_232`;
CREATE TABLE `integral_record_2022_232`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_233
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_233`;
CREATE TABLE `integral_record_2022_233`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_234
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_234`;
CREATE TABLE `integral_record_2022_234`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_235
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_235`;
CREATE TABLE `integral_record_2022_235`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_236
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_236`;
CREATE TABLE `integral_record_2022_236`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_237
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_237`;
CREATE TABLE `integral_record_2022_237`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_238
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_238`;
CREATE TABLE `integral_record_2022_238`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_239
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_239`;
CREATE TABLE `integral_record_2022_239`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_24
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_24`;
CREATE TABLE `integral_record_2022_24`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_240
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_240`;
CREATE TABLE `integral_record_2022_240`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_241
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_241`;
CREATE TABLE `integral_record_2022_241`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_242
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_242`;
CREATE TABLE `integral_record_2022_242`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_243
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_243`;
CREATE TABLE `integral_record_2022_243`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_244
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_244`;
CREATE TABLE `integral_record_2022_244`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_245
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_245`;
CREATE TABLE `integral_record_2022_245`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_246
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_246`;
CREATE TABLE `integral_record_2022_246`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_247
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_247`;
CREATE TABLE `integral_record_2022_247`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_248
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_248`;
CREATE TABLE `integral_record_2022_248`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_249
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_249`;
CREATE TABLE `integral_record_2022_249`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_25
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_25`;
CREATE TABLE `integral_record_2022_25`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_250
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_250`;
CREATE TABLE `integral_record_2022_250`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_251
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_251`;
CREATE TABLE `integral_record_2022_251`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_252
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_252`;
CREATE TABLE `integral_record_2022_252`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_253
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_253`;
CREATE TABLE `integral_record_2022_253`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_254
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_254`;
CREATE TABLE `integral_record_2022_254`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_255
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_255`;
CREATE TABLE `integral_record_2022_255`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_256
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_256`;
CREATE TABLE `integral_record_2022_256`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_26
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_26`;
CREATE TABLE `integral_record_2022_26`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_27
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_27`;
CREATE TABLE `integral_record_2022_27`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_28
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_28`;
CREATE TABLE `integral_record_2022_28`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_29
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_29`;
CREATE TABLE `integral_record_2022_29`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_3
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_3`;
CREATE TABLE `integral_record_2022_3`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_30
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_30`;
CREATE TABLE `integral_record_2022_30`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_31
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_31`;
CREATE TABLE `integral_record_2022_31`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_32
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_32`;
CREATE TABLE `integral_record_2022_32`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_33
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_33`;
CREATE TABLE `integral_record_2022_33`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_34
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_34`;
CREATE TABLE `integral_record_2022_34`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_35
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_35`;
CREATE TABLE `integral_record_2022_35`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_36
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_36`;
CREATE TABLE `integral_record_2022_36`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_37
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_37`;
CREATE TABLE `integral_record_2022_37`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_38
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_38`;
CREATE TABLE `integral_record_2022_38`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_39
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_39`;
CREATE TABLE `integral_record_2022_39`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_4
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_4`;
CREATE TABLE `integral_record_2022_4`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_40
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_40`;
CREATE TABLE `integral_record_2022_40`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_41
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_41`;
CREATE TABLE `integral_record_2022_41`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_42
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_42`;
CREATE TABLE `integral_record_2022_42`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_43
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_43`;
CREATE TABLE `integral_record_2022_43`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_44
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_44`;
CREATE TABLE `integral_record_2022_44`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_45
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_45`;
CREATE TABLE `integral_record_2022_45`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_46
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_46`;
CREATE TABLE `integral_record_2022_46`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_47
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_47`;
CREATE TABLE `integral_record_2022_47`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_48
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_48`;
CREATE TABLE `integral_record_2022_48`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_49
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_49`;
CREATE TABLE `integral_record_2022_49`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_5
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_5`;
CREATE TABLE `integral_record_2022_5`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_50
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_50`;
CREATE TABLE `integral_record_2022_50`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_51
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_51`;
CREATE TABLE `integral_record_2022_51`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_52
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_52`;
CREATE TABLE `integral_record_2022_52`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_53
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_53`;
CREATE TABLE `integral_record_2022_53`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_54
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_54`;
CREATE TABLE `integral_record_2022_54`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_55
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_55`;
CREATE TABLE `integral_record_2022_55`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_56
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_56`;
CREATE TABLE `integral_record_2022_56`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_57
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_57`;
CREATE TABLE `integral_record_2022_57`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_58
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_58`;
CREATE TABLE `integral_record_2022_58`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_59
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_59`;
CREATE TABLE `integral_record_2022_59`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_6
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_6`;
CREATE TABLE `integral_record_2022_6`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_60
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_60`;
CREATE TABLE `integral_record_2022_60`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_61
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_61`;
CREATE TABLE `integral_record_2022_61`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_62
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_62`;
CREATE TABLE `integral_record_2022_62`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_63
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_63`;
CREATE TABLE `integral_record_2022_63`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_64
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_64`;
CREATE TABLE `integral_record_2022_64`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_65
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_65`;
CREATE TABLE `integral_record_2022_65`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_66
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_66`;
CREATE TABLE `integral_record_2022_66`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_67
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_67`;
CREATE TABLE `integral_record_2022_67`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_68
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_68`;
CREATE TABLE `integral_record_2022_68`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_69
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_69`;
CREATE TABLE `integral_record_2022_69`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_7
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_7`;
CREATE TABLE `integral_record_2022_7`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_70
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_70`;
CREATE TABLE `integral_record_2022_70`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_71
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_71`;
CREATE TABLE `integral_record_2022_71`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_72
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_72`;
CREATE TABLE `integral_record_2022_72`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_73
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_73`;
CREATE TABLE `integral_record_2022_73`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_74
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_74`;
CREATE TABLE `integral_record_2022_74`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_75
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_75`;
CREATE TABLE `integral_record_2022_75`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_76
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_76`;
CREATE TABLE `integral_record_2022_76`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_77
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_77`;
CREATE TABLE `integral_record_2022_77`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_78
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_78`;
CREATE TABLE `integral_record_2022_78`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_79
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_79`;
CREATE TABLE `integral_record_2022_79`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_8
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_8`;
CREATE TABLE `integral_record_2022_8`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_80
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_80`;
CREATE TABLE `integral_record_2022_80`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_81
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_81`;
CREATE TABLE `integral_record_2022_81`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_82
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_82`;
CREATE TABLE `integral_record_2022_82`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_83
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_83`;
CREATE TABLE `integral_record_2022_83`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_84
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_84`;
CREATE TABLE `integral_record_2022_84`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_85
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_85`;
CREATE TABLE `integral_record_2022_85`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_86
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_86`;
CREATE TABLE `integral_record_2022_86`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_87
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_87`;
CREATE TABLE `integral_record_2022_87`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_88
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_88`;
CREATE TABLE `integral_record_2022_88`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_89
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_89`;
CREATE TABLE `integral_record_2022_89`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_9
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_9`;
CREATE TABLE `integral_record_2022_9`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_90
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_90`;
CREATE TABLE `integral_record_2022_90`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_91
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_91`;
CREATE TABLE `integral_record_2022_91`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_92
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_92`;
CREATE TABLE `integral_record_2022_92`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_93
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_93`;
CREATE TABLE `integral_record_2022_93`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_94
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_94`;
CREATE TABLE `integral_record_2022_94`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_95
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_95`;
CREATE TABLE `integral_record_2022_95`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_96
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_96`;
CREATE TABLE `integral_record_2022_96`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_97
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_97`;
CREATE TABLE `integral_record_2022_97`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_98
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_98`;
CREATE TABLE `integral_record_2022_98`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_record_2022_99
-- ----------------------------
DROP TABLE IF EXISTS `integral_record_2022_99`;
CREATE TABLE `integral_record_2022_99`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '积分编号',
  `source` int NOT NULL COMMENT '积分来源',
  `integral_type` int NOT NULL COMMENT '积分类型：增加，消费',
  `num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分数量',
  `lose_efficacy_time` datetime NOT NULL COMMENT '积分失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for integral_user_count
-- ----------------------------
DROP TABLE IF EXISTS `integral_user_count`;
CREATE TABLE `integral_user_count`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `sum_integral` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '总积分（获取积分-消费积分）',
  `consume_integral` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '消费积分',
  `give_integral` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '获取积分',
  `rank` int NOT NULL COMMENT '积分排名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
