/*
Navicat MySQL Data Transfer

Source Server         : Test
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : confidants

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2023-07-29 23:03:26
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='标签';

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', 'C语言', '1', '234567', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('2', 'C++', '2', '908765', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('3', 'Java', '3', '123456', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('4', 'Python', '4', '876543', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('5', 'JavaScript', '5', '345678', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('6', 'PHP', '6', '789012', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('7', 'Ruby', '2200003', '567890', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('8', 'Swift', '2200008', '678901', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('9', 'TypeScript', '2200009', '456789', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('10', 'Go', '2200010', '678345', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('11', 'Rust', '2200011', '890123', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');
INSERT INTO `tag` VALUES ('12', 'Kotlin', '2200012', '432187', '1', '2023-03-09 19:23:41', '2023-07-29 22:33:47', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='队伍';

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', 'Java开发组', 'Java开发', '10', '2024-01-01 00:00:00', '1', '0', '', '2023-03-09 19:20:25', '2023-03-28 18:27:37', '1');
INSERT INTO `team` VALUES ('2', '后端开发', 'Java后端', '6', '2023-08-01 00:00:00', '1', '2', '001', '2023-03-09 19:21:02', '2023-03-29 00:25:41', '1');
INSERT INTO `team` VALUES ('3', '软件测试组', '测试开发', '3', '2023-08-02 00:00:00', '1', '1', '', '2023-03-09 19:21:40', '2023-03-09 19:21:40', '0');
INSERT INTO `team` VALUES ('4', 'test001', 'python大数据方向', '3', '2023-08-01 00:00:00', '2', '0', '', '2023-03-10 16:56:58', '2023-03-10 16:56:58', '0');
INSERT INTO `team` VALUES ('5', '软件测试组', '爱德华的话', '10', '2024-01-01 00:00:00', '1', '0', '', '2023-03-10 17:20:34', '2023-03-10 17:20:34', '0');
INSERT INTO `team` VALUES ('6', '突击小队', '软件开发测试，主打一个能力至上，实力为尊！', '10', '2024-01-01 00:00:00', '1', '0', '', '2023-03-10 23:02:00', '2023-03-10 23:02:00', '0');
INSERT INTO `team` VALUES ('7', '大数据开发组', '大数据爱好者的福音，自主学习的圣地', '10', '2024-01-01 00:00:00', '2200052', '0', '', '2023-03-28 10:46:24', '2023-03-28 10:46:24', '0');
INSERT INTO `team` VALUES ('8', '加密队伍测试', '测试加密效果', '7', '2024-01-01 00:00:00', '1', '2', '1234', '2023-03-29 00:26:34', '2023-03-29 00:26:34', '0');
INSERT INTO `team` VALUES ('9', '大数据开发组3', 'sgdahgdafxvcbadb大厦的哈是否该技术犯规十分关键你撒发挥爱好农民工', '10', '2024-02-01 00:00:00', '2200056', '1', '', '2023-03-29 17:13:52', '2023-03-29 17:13:52', '0');
INSERT INTO `team` VALUES ('10', '大数据开发组4', '所得过封侯', '5', '2024-01-01 00:00:00', '2200056', '0', '', '2023-03-29 17:14:25', '2023-03-29 17:14:25', '0');
INSERT INTO `team` VALUES ('11', '大数据开发组', '所有人条件', '3', '2024-02-01 00:00:00', '2200056', '1', '', '2023-03-29 17:37:51', '2023-03-29 17:37:51', '0');
INSERT INTO `team` VALUES ('12', '大数据开发组5', '但是东方', '6', '2024-01-01 00:00:00', '1', '2', '1111', '2023-03-29 18:20:40', '2023-03-29 18:20:40', '0');
INSERT INTO `team` VALUES ('13', '大数据开发组3', 'wetwtaret', '5', '2024-01-01 00:00:00', '2200056', '0', '', '2023-03-29 18:33:03', '2023-03-29 18:33:03', '0');
INSERT INTO `team` VALUES ('14', '大数据开发组', 'ert', '5', '2024-01-01 00:00:00', '2200056', '1', '', '2023-03-29 18:34:09', '2023-03-29 18:34:09', '0');
INSERT INTO `team` VALUES ('15', 'day', 'trys', '3', '2024-01-01 00:00:00', '2200058', '0', '', '2023-07-29 18:48:34', '2023-07-29 18:48:34', '0');
INSERT INTO `team` VALUES ('16', 'dshr', 'fgshs', '3', '2024-01-01 00:00:00', '2200058', '1', '', '2023-07-29 18:49:12', '2023-07-29 18:49:12', '0');
INSERT INTO `team` VALUES ('17', '大数据开发组6856', '5685', '7', '2024-01-01 00:00:00', '2200056', '0', '', '2023-07-29 19:02:44', '2023-07-29 19:02:44', '0');
INSERT INTO `team` VALUES ('18', '大数据开发组', 'wtw', '33', '2024-01-01 00:00:00', '2200056', '0', '', '2023-07-29 19:05:54', '2023-07-29 19:05:54', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(256) DEFAULT NULL COMMENT '用户昵称',
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
) ENGINE=InnoDB AUTO_INCREMENT=2800060 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '超级管理员', 'admin', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '1214145', 'battlegaos@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:43:21', '0', '1', '100001', '[\"男\",\"本科\",\"23应届\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2', '游客用户', 'user', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:49:05', '0', '0', '139314', '[\"男\",\"本科\",\"大三\",\"计算机科学与技术\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('3', '    张晓宇', 'zhangxiaoyu', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:50:58', '0', '0', '    234567', '[\"男\",\"硕士\",\"23应届\",\"计算机科学与技术\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('4', '    李婷婷', 'litingting', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:44:55', '0', '0', '    908765', '[\"男\",\"大专\",\"大三\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('5', '    王伟强', 'wangweiqiang', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:55:43', '0', '0', '    123456', '[\"男\",\"本科\",\"大三\",\"人工智能\",\"Java\",\"Python\"]');
INSERT INTO `user` VALUES ('6', '    赵静怡', 'zhaojingyi', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:56:02', '0', '0', '    876543', '[\"男\",\"本科\",\"大一\",\"软件工程\",\"Java\",\"PHP\"]');
INSERT INTO `user` VALUES ('2200003', '    陈磊', 'chenlei', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:51:45', '0', '0', '    345678', '[\"男\",\"本科\",\"大四\",\"网络工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200008', '    刘智慧', 'liuzhihui', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:55:49', '0', '0', '    789012', '[\"男\",\"本科\",\"大三\",\"人工智能\",\"Java\",\"Python\",\"Go\"]');
INSERT INTO `user` VALUES ('2200009', '    杨芳', 'yangfang', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:49:05', '0', '0', '    567890', '[\"男\",\"本科\",\"大三\",\"人工智能\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200010', '    黄健康', 'huangjiangkenag', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:37:34', '0', '0', '    678901', '[\"女\",\"本科\",\"大三\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200011', '    周丽君', 'zhoulijun', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:56:10', '0', '0', '    456789', '[\"男\",\"本科\",\"大一\",\"软件工程\",\"Java\",\"Python\",\"Go\"]');
INSERT INTO `user` VALUES ('2200012', '    吴迪', 'wudi', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:56:14', '0', '0', '    678345', '[\"男\",\"本科\",\"大四\",\"计算机科学与技术\",\"Java\",\"Python\",\"Go\"]');
INSERT INTO `user` VALUES ('2200013', '    许宝宝', 'xubaobao', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:47:16', '0', '0', '    890123', '[\"男\",\"博士\",\"已工作\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200014', '    曾浩然', 'zenghaoran', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:52:19', '0', '0', '    432187', '[\"女\",\"本科\",\"大三\",\"嵌入式系统\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200015', '    叶珊珊', 'yeshanshan', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:55:05', '0', '0', '    987654', '[\"男\",\"大专\",\"大一\",\"软件工程\",\"Java\",\"JavaScript\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200016', '    唐翔', 'tangxiang', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:49:05', '0', '0', '    210987', '[\"男\",\"本科\",\"大三\",\"计算机科学与技术\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200017', '    冯欣怡', 'fengxiyi', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:39:25', '0', '0', '    876123', '[\"女\",\"本科\",\"大一\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200018', '    丁阳', 'dingyang', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:51:27', '0', '0', '    543890', '[\"男\",\"本科\",\"大三\",\"云计算\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200019', '    梁建设', 'liangjianshe', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:49:05', '0', '0', '    120987', '[\"男\",\"本科\",\"大三\",\"计算机科学与技术\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200020', '    谢思佳', 'xiesijia', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:51:45', '0', '0', '    876210', '[\"男\",\"本科\",\"大三\",\"网络工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200021', '    方伟', 'fangwei', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:40:10', '0', '0', '    234567', '[\"男\",\"本科\",\"大二\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200022', '    钟雅婷', 'zhengyating', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:53:08', '0', '0', '    908765', '[\"男\",\"本科\",\"大四\",\"人工智能\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200023', '    宋远', 'songyuan', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:53:08', '0', '0', '    321098', '[\"男\",\"本科\",\"大四\",\"数据库管理\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200024', '    郑美丽', 'zhengmeili', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:52:03', '0', '0', '    678345', '[\"男\",\"本科\",\"23应届\",\"信息安全\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200025', '    韩凯', 'hankai', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:55:05', '0', '0', '    890123', '[\"男\",\"本科\",\"23应届\",\"嵌入式系统\",\"Java\",\"JavaScript\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200026', '    许兴宇', 'xuxingyu', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:53:26', '0', '0', '    654321', '[\"男\",\"本科\",\"23应届\",\"网络工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200027', '    吕梅', 'lvmei', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:49:05', '0', '0', '    109876', '[\"男\",\"本科\",\"大三\",\"人工智能\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200028', '    高勇', 'gaoyu', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:52:03', '0', '0', '    234567', '[\"男\",\"本科\",\"23应届\",\"信息安全\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200029', '    谭平', 'tanping', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:47:25', '0', '0', '    908765', '[\"男\",\"博士\",\"已工作\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200030', '    姚晓萌', 'yaoxiaomeng', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:50:36', '0', '0', '    123456', '[\"男\",\"本科\",\"已工作\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200031', '    蔡宇航', 'caiyuhang', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:45:19', '0', '0', '    876543', '[\"男\",\"大专\",\"大一\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200032', '    侯玉兰', 'houyulan', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:29:14', '0', '0', '    345678', '[\"男\",\"本科\",\"大三\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200033', 'TestUser', 'testuser', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:49:05', '0', '0', '    789012', '[\"男\",\"本科\",\"大三\",\"人工智能\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200034', '    Ethan', '    Ethan', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:53:08', '0', '0', '    567890', '[\"男\",\"本科\",\"大四\",\"云计算\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200035', '    Olivia', '    Olivia', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:42:51', '0', '0', '    678901', '[\"女\",\"本科\",\"已工作\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200036', '    Noah', '    Noah', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:49:05', '0', '0', '    456789', '[\"男\",\"本科\",\"大三\",\"计算机科学与技术\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200037', '    Ava', '    Ava', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:51:15', '0', '0', '    678345', '[\"男\",\"本科\",\"大三\",\"大数据分析\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200038', '    Liam', '    Liam', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:55:05', '0', '0', '    890123', '[\"男\",\"本科\",\"23应届\",\"软件工程\",\"Java\",\"JavaScript\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200039', '    Isabella', '    Isabella', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:56:54', '0', '0', '    432187', '[\"女\",\"本科\",\"大三\",\"软件工程\",\"Java\",\"Python\",\"TypeScript\",\"Go\"]');
INSERT INTO `user` VALUES ('2200040', '    Aiden', '    Aiden', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:43:56', '0', '0', '    987654', '[\"男\",\"本科\",\"23应届\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200041', '    Sophia', '    Sophia', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:53:26', '0', '0', '    210987', '[\"男\",\"本科\",\"23应届\",\"计算机科学与技术\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200042', '    Lucas', '    Lucas', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:39:41', '0', '0', '    876123', '[\"男\",\"本科\",\"大一\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200043', '    Mia', '    Mia', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:50:36', '0', '0', '    543890', '[\"男\",\"本科\",\"已工作\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200044', '    Jackson', '    Jackson', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:51:15', '0', '0', '    120987', '[\"男\",\"本科\",\"大三\",\"大数据分析\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200045', '    Charlotte', '    Charlotte', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:56:51', '0', '0', '    876210', '[\"男\",\"本科\",\"大三\",\"人工智能\",\"Java\",\"Python\",\"C++\",\"TypeScript\"]');
INSERT INTO `user` VALUES ('2200046', '    Caden', '    Caden', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:51:45', '0', '0', '    234567', '[\"男\",\"本科\",\"大三\",\"网络工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200047', '    Amelia', '    Amelia', 'https://p8.itc.cn/images01/20220310/d2532f52b90242bb8147c4cc19e1e544.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:40:04', '0', '0', '    908765', '[\"男\",\"本科\",\"大二\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200048', '    Grayson', '    Grayson', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:50:36', '0', '0', '    321098', '[\"男\",\"硕士\",\"已工作\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200049', '    Harper', '    Harper', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '1', '2023-03-09 19:16:58', '2023-07-29 22:52:39', '0', '0', '    678345', '[\"男\",\"本科\",\"大三\",\"数据库管理\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200050', '    Mason', '    Mason', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:55:05', '0', '0', '    890123', '[\"女\",\"本科\",\"大三\",\"信息安全\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200051', '    Evelyn', '    Evelyn', 'https://p4.itc.cn/images01/20220310/8521d04754e74ed48fa6a28192f81b7e.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '57757', 'wangyi@163.com', '0', '2023-03-09 19:16:58', '2023-07-29 22:49:05', '0', '0', '    654321', '[\"男\",\"本科\",\"大三\",\"人工智能\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200052', '    Elijah', '    Elijah', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '009c224b669d690fc66f37c7b96e9804', '13676782909', 'wangyi@163.com', '0', '2023-03-28 10:35:14', '2023-07-29 22:51:27', '0', '0', '    109876', '[\"男\",\"本科\",\"大二\",\"云计算\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200055', 'battlegao', 'testuser', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '009c224b669d690fc66f37c7b96e9804', '12122', 'wangyi@163.com', '0', '2023-03-28 23:56:16', '2023-07-29 22:49:05', '0', '0', '420443', '[\"男\",\"本科\",\"大三\",\"计算机科学与技术\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200056', '张三', 'zhangsan', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '009c224b669d690fc66f37c7b96e9804', '12235425634', 'wangyi@163.com', '0', '2023-03-29 17:02:18', '2023-07-29 22:44:04', '0', '0', '758770', '[\"男\",\"本科\",\"23应届\",\"软件工程\",\"Java\",\"Python\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200057', '张三1', 'zhangsan1', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '0', '009c224b669d690fc66f37c7b96e9804', '12141414311', 'wangyi@163.com', '0', '2023-03-29 17:53:57', '2023-07-29 22:57:05', '0', '0', '261398', '[\"男\",\"本科\",\"大三\",\"计算机科学与技术\",\"Java\",\"TypeScript\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2200058', '测试08', 'test', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '1', '009c224b669d690fc66f37c7b96e9804', '11512354365', 'wangyi@163.com', '0', '2023-07-29 18:48:05', '2023-07-29 22:57:16', '0', '0', '692778', '[\"男\",\"本科\",\"大四\",\"计算机科学与技术\",\"Java\",\"Rust\",\"C++\",\"Go\"]');
INSERT INTO `user` VALUES ('2800059', '张三', 'zhangsan6', 'https://p6.itc.cn/images01/20220310/98acb4f6333a468da5fe7f091057f191.jpeg', '0', '8f33fa90f7dca4a37e80882843c458d4', '12141414314', 'wangyi@163.com', '0', '2023-07-29 21:03:16', '2023-07-29 22:49:05', '0', '0', '502115', '[\"男\",\"本科\",\"大三\",\"计算机科学与技术\",\"Java\",\"Python\",\"C++\",\"Go\"]');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='用户队伍关系';

-- ----------------------------
-- Records of user_team
-- ----------------------------
INSERT INTO `user_team` VALUES ('1', '1', '1', '2023-03-09 19:20:26', '2023-03-09 19:20:25', '2023-07-28 18:27:37', '1');
INSERT INTO `user_team` VALUES ('2', '1', '2', '2023-03-09 19:21:03', '2023-03-09 19:21:02', '2023-07-29 00:25:41', '1');
INSERT INTO `user_team` VALUES ('3', '1', '3', '2023-03-09 19:21:41', '2023-03-09 19:21:40', '2023-03-09 19:21:40', '0');
INSERT INTO `user_team` VALUES ('4', '2', '1', '2023-03-10 16:55:58', '2023-03-10 16:55:57', '2023-03-10 16:57:03', '1');
INSERT INTO `user_team` VALUES ('5', '2', '4', '2023-03-10 16:56:59', '2023-03-10 16:56:58', '2023-03-10 16:56:58', '0');
INSERT INTO `user_team` VALUES ('6', '2', '1', '2023-03-10 16:57:12', '2023-03-10 16:57:12', '2023-07-28 18:27:37', '1');
INSERT INTO `user_team` VALUES ('7', '1', '4', '2023-03-10 16:58:41', '2023-03-10 16:58:41', '2023-03-10 16:58:41', '0');
INSERT INTO `user_team` VALUES ('8', '1', '5', '2023-03-10 17:20:34', '2023-03-10 17:20:34', '2023-03-10 17:20:34', '0');
INSERT INTO `user_team` VALUES ('9', '1', '6', '2023-03-10 23:02:01', '2023-03-10 23:02:00', '2023-03-10 23:02:00', '0');
INSERT INTO `user_team` VALUES ('10', '2200052', '7', '2023-07-28 10:46:24', '2023-07-28 10:46:24', '2023-07-28 10:46:24', '0');
INSERT INTO `user_team` VALUES ('11', '2200052', '1', '2023-07-28 10:46:34', '2023-07-28 10:46:34', '2023-07-28 18:27:37', '1');
INSERT INTO `user_team` VALUES ('12', '1', '8', '2023-07-29 00:26:35', '2023-07-29 00:26:34', '2023-07-29 00:26:34', '0');
INSERT INTO `user_team` VALUES ('13', '2200056', '9', '2023-07-29 17:13:53', '2023-07-29 17:13:52', '2023-07-29 17:13:52', '0');
INSERT INTO `user_team` VALUES ('14', '2200056', '10', '2023-07-29 17:14:26', '2023-07-29 17:14:25', '2023-07-29 17:14:25', '0');
INSERT INTO `user_team` VALUES ('15', '2200056', '11', '2023-07-29 17:37:52', '2023-07-29 17:37:51', '2023-07-29 17:37:51', '0');
INSERT INTO `user_team` VALUES ('16', '1', '10', '2023-07-29 18:16:13', '2023-07-29 18:16:13', '2023-07-29 18:16:13', '0');
INSERT INTO `user_team` VALUES ('17', '1', '12', '2023-07-29 18:20:41', '2023-07-29 18:20:40', '2023-07-29 18:20:40', '0');
INSERT INTO `user_team` VALUES ('18', '2200056', '13', '2023-07-29 18:33:03', '2023-07-29 18:33:03', '2023-07-29 18:33:03', '0');
INSERT INTO `user_team` VALUES ('19', '2200056', '4', '2023-07-29 18:33:11', '2023-07-29 18:33:11', '2023-07-29 18:33:11', '0');
INSERT INTO `user_team` VALUES ('20', '2200056', '8', '2023-07-29 18:33:39', '2023-07-29 18:33:38', '2023-07-29 18:33:38', '0');
INSERT INTO `user_team` VALUES ('21', '2200056', '14', '2023-07-29 18:34:09', '2023-07-29 18:34:09', '2023-07-29 18:34:09', '0');
INSERT INTO `user_team` VALUES ('22', '2200058', '15', '2023-07-29 18:48:35', '2023-07-29 18:48:34', '2023-07-29 18:48:34', '0');
INSERT INTO `user_team` VALUES ('23', '2200058', '16', '2023-07-29 18:49:12', '2023-07-29 18:49:12', '2023-07-29 18:49:12', '0');
INSERT INTO `user_team` VALUES ('24', '2200056', '17', '2023-07-29 19:02:45', '2023-07-29 19:02:45', '2023-07-29 19:02:45', '0');
INSERT INTO `user_team` VALUES ('25', '2200056', '18', '2023-07-29 19:05:55', '2023-07-29 19:05:54', '2023-07-29 19:05:54', '0');
