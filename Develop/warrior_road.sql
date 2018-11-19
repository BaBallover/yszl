/*
Navicat MySQL Data Transfer

Source Server         : 112.74.126.84_3306
Source Server Version : 50635
Source Host           : 112.74.126.84:3306
Source Database       : warrior_road

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2018-11-19 12:42:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `record_list`
-- ----------------------------
DROP TABLE IF EXISTS `record_list`;
CREATE TABLE `record_list` (
  `l_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`l_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record_list
-- ----------------------------
INSERT INTO `record_list` VALUES ('1', '0');
INSERT INTO `record_list` VALUES ('2', '0');
INSERT INTO `record_list` VALUES ('3', '0');
INSERT INTO `record_list` VALUES ('4', '0');
INSERT INTO `record_list` VALUES ('5', '0');
INSERT INTO `record_list` VALUES ('6', '0');
INSERT INTO `record_list` VALUES ('7', '0');
INSERT INTO `record_list` VALUES ('8', '0');
INSERT INTO `record_list` VALUES ('9', '0');
INSERT INTO `record_list` VALUES ('10', '0');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `u_id` int(11) NOT NULL,
  `u_account` varchar(50) NOT NULL COMMENT '账号',
  `u_password` varchar(50) NOT NULL COMMENT '密码',
  `u_nickname` varchar(255) NOT NULL COMMENT '昵称',
  `u_state` int(1) NOT NULL COMMENT '在线状态',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------

-- ----------------------------
-- Table structure for `user_record`
-- ----------------------------
DROP TABLE IF EXISTS `user_record`;
CREATE TABLE `user_record` (
  `r_id` int(11) NOT NULL,
  `r_killMonsterNumber` int(11) unsigned zerofill NOT NULL COMMENT '杀怪数量',
  `r_mostMoney` int(11) unsigned zerofill NOT NULL COMMENT '最高金币获取数',
  `r_mostHp` int(11) unsigned zerofill NOT NULL COMMENT '最高血量',
  `r_mostAtk` int(11) unsigned zerofill NOT NULL COMMENT '最高攻击',
  `r_isTop` int(11) unsigned zerofill NOT NULL COMMENT '是否通关',
  `r_lessDeath` int(11) DEFAULT NULL COMMENT '通关最少死亡次数',
  `r_lessTime` time DEFAULT NULL COMMENT '通关最少用时',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_record
-- ----------------------------

-- ----------------------------
-- Table structure for `user_record_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_record_info`;
CREATE TABLE `user_record_info` (
  `r_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_record_info
-- ----------------------------

-- ----------------------------
-- Table structure for `user_save`
-- ----------------------------
DROP TABLE IF EXISTS `user_save`;
CREATE TABLE `user_save` (
  `s_id` int(11) NOT NULL COMMENT '内置id',
  `s_state` varchar(255) NOT NULL COMMENT '角色状态(位置信息)',
  `s_floor` int(2) NOT NULL COMMENT '所在层数',
  `s_money` int(11) NOT NULL COMMENT '拥有金钱',
  `s_hp` int(11) NOT NULL COMMENT '血量',
  `s_atk` int(11) NOT NULL COMMENT '攻击',
  `s_death` int(2) unsigned zerofill NOT NULL COMMENT '死亡次数',
  `s_buy` int(2) unsigned zerofill NOT NULL COMMENT '购买次数',
  `s_startTime` datetime NOT NULL COMMENT '存档开始时间',
  `s_lastTime` datetime NOT NULL COMMENT '上次记录时间',
  `s_killMosterNum` int(11) unsigned zerofill NOT NULL COMMENT '杀怪数量',
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_save
-- ----------------------------

-- ----------------------------
-- Table structure for `user_save_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_save_info`;
CREATE TABLE `user_save_info` (
  `u_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_save_info
-- ----------------------------
