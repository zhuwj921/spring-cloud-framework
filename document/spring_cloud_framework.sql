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

 Date: 30/05/2022 00:28:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_resource
-- ----------------------------
DROP TABLE IF EXISTS `auth_resource`;
CREATE TABLE `auth_resource`  (
  `id` bigint NOT NULL,
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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_role
-- ----------------------------
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role`  (
  `id` bigint NOT NULL,
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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `auth_role_resource_relation`;
CREATE TABLE `auth_role_resource_relation`  (
  `id` bigint NOT NULL,
  `create_by` bigint NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `modified_by` bigint NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `version` int NOT NULL DEFAULT 0,
  `resource_id` bigint NULL DEFAULT NULL,
  `role_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` bigint NOT NULL,
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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_role_relation`;
CREATE TABLE `auth_user_role_relation`  (
  `id` bigint NOT NULL,
  `create_by` bigint NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `modified_by` bigint NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `version` int NOT NULL DEFAULT 0,
  `role_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for base
-- ----------------------------
DROP TABLE IF EXISTS `base`;
CREATE TABLE `base`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gateway_request_log
-- ----------------------------
DROP TABLE IF EXISTS `gateway_request_log`;
CREATE TABLE `gateway_request_log`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `request_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求url',
  `request_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求用户名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for integral_error_record
-- ----------------------------
DROP TABLE IF EXISTS `integral_error_record`;
CREATE TABLE `integral_error_record`  (
  `id` bigint NOT NULL COMMENT '主键id',
  `create_by` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标志',
  `modified_by` bigint NOT NULL COMMENT '更新人',
  `modified_time` datetime(6) NOT NULL COMMENT '更新时间',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本',
  `integral_object` json NULL COMMENT '积分对象',
  `error_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '错误消息',
  `integral_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '积分来源',
  `whether_fill_push` bit(1) NULL DEFAULT b'0' COMMENT '是否补推（默认否）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分错误信息表' ROW_FORMAT = Dynamic;

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
  `integral_rank` int NOT NULL DEFAULT 0 COMMENT '积分排名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
