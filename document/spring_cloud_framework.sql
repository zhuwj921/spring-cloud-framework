/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : spring_cloud_framework

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 15/05/2022 23:49:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_resource
-- ----------------------------
DROP TABLE IF EXISTS `auth_resource`;
CREATE TABLE `auth_resource`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `modified_by` bigint NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `version` int NOT NULL DEFAULT 0,
  `resource_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resource_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_id` bigint NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resource_type` int NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_resource
-- ----------------------------

-- ----------------------------
-- Table structure for auth_role
-- ----------------------------
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `modified_by` bigint NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `version` int NOT NULL DEFAULT 0,
  `role_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_role
-- ----------------------------

-- ----------------------------
-- Table structure for auth_role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `auth_role_resource_relation`;
CREATE TABLE `auth_role_resource_relation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `modified_by` bigint NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `version` int NOT NULL DEFAULT 0,
  `resource_id` bigint NULL DEFAULT NULL,
  `role_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_role_resource_relation
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `modified_by` bigint NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `version` int NOT NULL DEFAULT 0,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` int NULL DEFAULT NULL,
  `last_login_time` datetime(6) NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_t1iph3dfc25ukwcl9xemtnojn`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_role_relation`;
CREATE TABLE `auth_user_role_relation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `modified_by` bigint NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `version` int NOT NULL DEFAULT 0,
  `role_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_role_relation
-- ----------------------------

-- ----------------------------
-- Table structure for base
-- ----------------------------
DROP TABLE IF EXISTS `base`;
CREATE TABLE `base`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base
-- ----------------------------

-- ----------------------------
-- Table structure for gateway_request_log
-- ----------------------------
DROP TABLE IF EXISTS `gateway_request_log`;
CREATE TABLE `gateway_request_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `request_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求url',
  `request_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求用户名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gateway_request_log
-- ----------------------------

-- ----------------------------
-- Table structure for integral_record0
-- ----------------------------
DROP TABLE IF EXISTS `integral_record0`;
CREATE TABLE `integral_record0`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record0
-- ----------------------------

-- ----------------------------
-- Table structure for integral_record1
-- ----------------------------
DROP TABLE IF EXISTS `integral_record1`;
CREATE TABLE `integral_record1`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record1
-- ----------------------------
INSERT INTO `integral_record1` VALUES (1, 1, '2022-05-15 23:45:16.749000', b'0', 1, '2022-05-15 23:45:16.749000', 0, '6281200c94fb56b2160ea2ca', 1, 2, 100, '2022-05-15 23:45:17');

-- ----------------------------
-- Table structure for integral_record2
-- ----------------------------
DROP TABLE IF EXISTS `integral_record2`;
CREATE TABLE `integral_record2`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record2
-- ----------------------------
INSERT INTO `integral_record2` VALUES (1, 2, '2022-05-15 23:48:39.174000', b'0', 2, '2022-05-15 23:48:39.174000', 0, '628120d794fb7b83d9a661a0', 1, 2, 100, '2022-05-15 23:48:39');

-- ----------------------------
-- Table structure for integral_record3
-- ----------------------------
DROP TABLE IF EXISTS `integral_record3`;
CREATE TABLE `integral_record3`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record3
-- ----------------------------

-- ----------------------------
-- Table structure for integral_record4
-- ----------------------------
DROP TABLE IF EXISTS `integral_record4`;
CREATE TABLE `integral_record4`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record4
-- ----------------------------

-- ----------------------------
-- Table structure for integral_record5
-- ----------------------------
DROP TABLE IF EXISTS `integral_record5`;
CREATE TABLE `integral_record5`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record5
-- ----------------------------

-- ----------------------------
-- Table structure for integral_record6
-- ----------------------------
DROP TABLE IF EXISTS `integral_record6`;
CREATE TABLE `integral_record6`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record6
-- ----------------------------

-- ----------------------------
-- Table structure for integral_record7
-- ----------------------------
DROP TABLE IF EXISTS `integral_record7`;
CREATE TABLE `integral_record7`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record7
-- ----------------------------

-- ----------------------------
-- Table structure for integral_record8
-- ----------------------------
DROP TABLE IF EXISTS `integral_record8`;
CREATE TABLE `integral_record8`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record8
-- ----------------------------

-- ----------------------------
-- Table structure for integral_record9
-- ----------------------------
DROP TABLE IF EXISTS `integral_record9`;
CREATE TABLE `integral_record9`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_record9
-- ----------------------------

-- ----------------------------
-- Table structure for integral_user_count
-- ----------------------------
DROP TABLE IF EXISTS `integral_user_count`;
CREATE TABLE `integral_user_count`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_user_count
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
