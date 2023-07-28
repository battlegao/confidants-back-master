/*
Navicat MySQL Data Transfer

Source Server         : Test
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : confidants

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2023-07-11 10:13:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tagName` varchar(256) DEFAULT NULL COMMENT '标签名称',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户 id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父标签 id',
  `isParent` tinyint(4) DEFAULT NULL COMMENT '0 - 不是, 1 - 父标签',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniIdx_tagName` (`tagName`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='标签';

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', 'java', '1', '1', '1', '2023-03-09 19:23:41', '2023-03-10 23:08:54', '0');
INSERT INTO `tag` VALUES ('2', 'go', '2', '2', '1', '2023-03-09 19:23:41', '2023-03-10 23:10:06', '0');
INSERT INTO `tag` VALUES ('3', 'c', '3', '3', '1', '2023-03-09 19:23:41', '2023-03-10 23:10:06', '0');
INSERT INTO `tag` VALUES ('4', 'php', '4', '4', '1', '2023-03-09 19:23:41', '2023-03-10 23:10:06', '0');
INSERT INTO `tag` VALUES ('5', 'test', '5', '5', '1', '2023-03-09 19:23:41', '2023-03-10 23:10:06', '0');
INSERT INTO `tag` VALUES ('6', 'javatest', '6', '6', '1', '2023-03-09 19:23:41', '2023-03-10 23:10:06', '0');
INSERT INTO `tag` VALUES ('7', 'gotest', '1', '1', '1', '2023-03-09 19:23:41', '2023-03-09 19:23:41', '0');
INSERT INTO `tag` VALUES ('8', 'python', '4', '4', '1', '2023-03-09 19:23:41', '2023-03-10 23:10:06', '0');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(256) NOT NULL COMMENT '队伍名称',
  `description` varchar(1024) DEFAULT NULL COMMENT '描述',
  `maxNum` int(11) NOT NULL DEFAULT '1' COMMENT '最大人数',
  `expireTime` datetime DEFAULT NULL COMMENT '过期时间',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户id（队长 id）',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 - 公开，1 - 私有，2 - 加密',
  `password` varchar(512) DEFAULT NULL COMMENT '密码',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='队伍';

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', 'Java开发组', 'Java开发', '10', '2024-01-01 00:00:00', '1', '0', '', '2023-03-09 19:20:25', '2023-03-09 19:22:17', '0');
INSERT INTO `team` VALUES ('2', '后端开发', 'Java后端', '6', '2023-08-01 00:00:00', '1', '2', '001', '2023-03-09 19:21:02', '2023-03-09 19:21:02', '0');
INSERT INTO `team` VALUES ('3', '软件测试组', '测试开发', '3', '2023-08-02 00:00:00', '1', '1', '', '2023-03-09 19:21:40', '2023-03-09 19:21:40', '0');
INSERT INTO `team` VALUES ('4', 'test001', 'python大数据方向', '3', '2023-08-01 00:00:00', '2', '0', '', '2023-03-10 16:56:58', '2023-03-10 16:56:58', '0');
INSERT INTO `team` VALUES ('5', '软件测试组', '爱德华的话', '10', '2024-01-01 00:00:00', '1', '0', '', '2023-03-10 17:20:34', '2023-03-10 17:20:34', '0');
INSERT INTO `team` VALUES ('6', '突击小队', '软件开发测试，主打一个能力至上，实力为尊！', '10', '2024-01-01 00:00:00', '1', '0', '', '2023-03-10 23:02:00', '2023-03-10 23:02:00', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(256) DEFAULT NULL COMMENT '用户昵称',
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) DEFAULT NULL COMMENT '账号',
  `avatarUrl` varchar(1024) DEFAULT NULL COMMENT '用户头像',
  `gender` tinyint(4) DEFAULT NULL COMMENT '性别',
  `userPassword` varchar(512) NOT NULL COMMENT '密码',
  `phone` varchar(128) DEFAULT NULL COMMENT '电话',
  `email` varchar(512) DEFAULT NULL COMMENT '邮箱',
  `userStatus` int(11) NOT NULL DEFAULT '0' COMMENT '状态 0 - 正常',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `userRole` int(11) NOT NULL DEFAULT '0' COMMENT '用户角色 0 - 普通用户 1 - 管理员',
  `planetCode` varchar(512) DEFAULT NULL COMMENT '星球编号',
  `tags` varchar(1024) DEFAULT NULL COMMENT '标签 json 列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2200052 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '1', 'admin', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '1214145', '141@11wf', '1', '2023-03-09 19:16:58', '2023-03-10 23:09:54', '0', '1', '1', '[\"男\",\"java\",\"大一\"]');
INSERT INTO `user` VALUES ('test1', '2', 'test1', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:04:08', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test2', '3', 'test2', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:04:08', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test3', '4', 'test3', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:04:08', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test4', '5', 'test4', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:04:08', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test5', '6', 'test5', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:04:08', '0', '0', '6', '[\"男\",\"test\"]');
INSERT INTO `user` VALUES ('test6', '2200003', 'test6', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test21', '2200008', 'test21', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test31', '2200009', 'test31', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test41', '2200010', 'test41', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test51', '2200011', 'test51', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '6', '[\"男\",\"test\"]');
INSERT INTO `user` VALUES ('test11', '2200012', 'test11', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test21', '2200013', 'test21', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test31', '2200014', 'test31', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test411', '2200015', 'test411', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test511', '2200016', 'test511', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '6', '[\"男\",\"test\"]');
INSERT INTO `user` VALUES ('test1111', '2200017', 'test1111', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test211', '2200018', 'test211', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test311', '2200019', 'test311', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test4111', '2200020', 'test4111', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test5111', '2200021', 'test5111', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '6', '[\"男\",\"test\"]');
INSERT INTO `user` VALUES ('test10', '2200022', 'test10', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test20', '2200023', 'test20', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test30', '2200024', 'test30', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test40', '2200025', 'test40', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test50', '2200026', 'test50', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '6', '[\"男\",\"test\"]');
INSERT INTO `user` VALUES ('test100', '2200027', 'test100', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test200', '2200028', 'test200', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test300', '2200029', 'test300', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test400', '2200030', 'test400', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test500', '2200031', 'test500', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '6', '[\"男\",\"test\"]');
INSERT INTO `user` VALUES ('test1000', '2200032', 'test1000', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test2000', '2200033', 'test2000', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test3000', '2200034', 'test3000', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test4000', '2200035', 'test4000', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test5000', '2200036', 'test5000', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '6', '[\"男\",\"test\"]');
INSERT INTO `user` VALUES ('test12', '2200037', 'test12', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test22', '2200038', 'test22', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test32', '2200039', 'test32', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test42', '2200040', 'test42', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test52', '2200041', 'test52', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '6', '[\"男\",\"test\"]');
INSERT INTO `user` VALUES ('test13', '2200042', 'test13', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test24', '2200043', 'test24', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test33', '2200044', 'test33', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test43', '2200045', 'test43', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test53', '2200046', 'test53', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '6', '[\"男\",\"test\"]');
INSERT INTO `user` VALUES ('test14', '2200047', 'test14', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '2', '[\"男\",\"python\"]');
INSERT INTO `user` VALUES ('test25', '2200048', 'test25', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '3', '[\"女\",\"test\"]');
INSERT INTO `user` VALUES ('test35', '2200049', 'test35', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '0', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '1', '4', '[\"男\",\"java\"]');
INSERT INTO `user` VALUES ('test46', '2200050', 'test46', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '5', '[\"女\",\"java\"]');
INSERT INTO `user` VALUES ('test57', '2200051', 'test57', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'ttest@163.com', '1', '2023-03-09 19:16:58', '2023-03-10 23:32:35', '0', '0', '6', '[\"男\",\"test\"]');

-- ----------------------------
-- Table structure for user_team
-- ----------------------------
DROP TABLE IF EXISTS `user_team`;
CREATE TABLE `user_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户id',
  `teamId` bigint(20) DEFAULT NULL COMMENT '队伍id',
  `joinTime` datetime DEFAULT NULL COMMENT '加入时间',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户队伍关系';

-- ----------------------------
-- Records of user_team
-- ----------------------------
INSERT INTO `user_team` VALUES ('1', '1', '1', '2023-03-09 19:20:26', '2023-03-09 19:20:25', '2023-03-09 19:20:25', '0');
INSERT INTO `user_team` VALUES ('2', '1', '2', '2023-03-09 19:21:03', '2023-03-09 19:21:02', '2023-03-09 19:21:02', '0');
INSERT INTO `user_team` VALUES ('3', '1', '3', '2023-03-09 19:21:41', '2023-03-09 19:21:40', '2023-03-09 19:21:40', '0');
INSERT INTO `user_team` VALUES ('4', '2', '1', '2023-03-10 16:55:58', '2023-03-10 16:55:57', '2023-03-10 16:57:03', '1');
INSERT INTO `user_team` VALUES ('5', '2', '4', '2023-03-10 16:56:59', '2023-03-10 16:56:58', '2023-03-10 16:56:58', '0');
INSERT INTO `user_team` VALUES ('6', '2', '1', '2023-03-10 16:57:12', '2023-03-10 16:57:12', '2023-03-10 16:57:12', '0');
INSERT INTO `user_team` VALUES ('7', '1', '4', '2023-03-10 16:58:41', '2023-03-10 16:58:41', '2023-03-10 16:58:41', '0');
INSERT INTO `user_team` VALUES ('8', '1', '5', '2023-03-10 17:20:34', '2023-03-10 17:20:34', '2023-03-10 17:20:34', '0');
INSERT INTO `user_team` VALUES ('9', '1', '6', '2023-03-10 23:02:01', '2023-03-10 23:02:00', '2023-03-10 23:02:00', '0');
