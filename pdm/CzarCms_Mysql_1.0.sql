/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : Czar.Cms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2019-07-10 11:19:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Article
-- ----------------------------
DROP TABLE IF EXISTS `Article`;
CREATE TABLE `Article` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `CategoryId` int(11) NOT NULL COMMENT '分类ID',
  `Title` varchar(128) NOT NULL COMMENT '文章标题',
  `ImageUrl` varchar(128) DEFAULT NULL COMMENT '图片地址',
  `Content` text COMMENT '文章内容',
  `ViewCount` int(11) NOT NULL COMMENT '浏览次数',
  `Sort` int(11) NOT NULL COMMENT '排序',
  `Author` varchar(64) DEFAULT NULL COMMENT '作者',
  `Source` varchar(128) DEFAULT NULL COMMENT '来源',
  `SeoTitle` varchar(128) DEFAULT NULL COMMENT 'SEO标题',
  `SeoKeyword` varchar(256) DEFAULT NULL COMMENT 'SEO关键字',
  `SeoDescription` varchar(512) DEFAULT NULL COMMENT 'SEO描述',
  `AddManagerId` int(11) NOT NULL COMMENT '添加人ID',
  `AddTime` datetime DEFAULT NULL COMMENT '添加时间',
  `ModifyManagerId` int(11) DEFAULT NULL COMMENT '修改人ID',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `IsTop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `IsSlide` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否轮播显示',
  `IsRed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否热门',
  `IsPublish` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发布',
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`Id`),
  KEY `FK_Relationship_5` (`CategoryId`),
  CONSTRAINT `FK_Relationship_5` FOREIGN KEY (`CategoryId`) REFERENCES `ArticleCategory` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章';

-- ----------------------------
-- Table structure for ArticleCategory
-- ----------------------------
DROP TABLE IF EXISTS `ArticleCategory`;
CREATE TABLE `ArticleCategory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Title` varchar(128) NOT NULL COMMENT '分类标题',
  `ParentId` int(11) NOT NULL COMMENT '父分类ID',
  `ClassList` varchar(128) DEFAULT NULL COMMENT '类别ID列表(逗号分隔开)',
  `ClassLayer` int(11) DEFAULT NULL COMMENT '类别深度',
  `Sort` int(11) NOT NULL COMMENT '排序',
  `ImageUrl` varchar(128) DEFAULT NULL COMMENT '分类图标',
  `SeoTitle` varchar(128) DEFAULT NULL COMMENT '分类SEO标题',
  `SeoKeywords` varchar(256) DEFAULT NULL COMMENT '分类SEO关键字',
  `SeoDescription` varchar(512) DEFAULT NULL COMMENT '分类SEO描述',
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章分类';

-- ----------------------------
-- Table structure for Manager
-- ----------------------------
DROP TABLE IF EXISTS `Manager`;
CREATE TABLE `Manager` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `RoleId` int(11) NOT NULL COMMENT '角色ID',
  `UserName` varchar(32) NOT NULL COMMENT '用户名',
  `Password` varchar(128) NOT NULL COMMENT '密码',
  `Avatar` varchar(256) DEFAULT NULL COMMENT '头像',
  `NickName` varchar(32) DEFAULT NULL COMMENT '用户昵称',
  `Mobile` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `Email` varchar(128) DEFAULT NULL COMMENT '邮箱地址',
  `LoginCount` int(11) DEFAULT NULL COMMENT '登录次数',
  `LoginLastIp` varchar(64) DEFAULT NULL COMMENT '最后一次登录IP',
  `LoginLastTime` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `AddManagerId` int(11) NOT NULL COMMENT '添加人',
  `AddTime` datetime DEFAULT NULL COMMENT '添加时间',
  `ModifyManagerId` int(11) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `IsLock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `IsDelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `Remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`),
  KEY `FK_Relationship_3` (`RoleId`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`RoleId`) REFERENCES `ManagerRole` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Table structure for ManagerLog
-- ----------------------------
DROP TABLE IF EXISTS `ManagerLog`;
CREATE TABLE `ManagerLog` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ActionType` varchar(32) DEFAULT NULL COMMENT '操作类型',
  `AddManageId` int(11) NOT NULL COMMENT '主键',
  `AddManagerNickName` varchar(64) DEFAULT NULL COMMENT '操作人名称',
  `AddTime` datetime DEFAULT NULL COMMENT '操作时间',
  `AddIp` varchar(64) DEFAULT NULL COMMENT '操作IP',
  `Remark` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`),
  KEY `FK_Relationship_4` (`AddManageId`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`AddManageId`) REFERENCES `Manager` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Table structure for ManagerRole
-- ----------------------------
DROP TABLE IF EXISTS `ManagerRole`;
CREATE TABLE `ManagerRole` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `RoleName` varchar(64) NOT NULL COMMENT '角色名称',
  `RoleType` int(11) NOT NULL COMMENT '角色类型1超管2系管',
  `IsSystem` tinyint(1) NOT NULL COMMENT '是否系统默认',
  `AddManagerId` int(11) NOT NULL COMMENT '添加人',
  `AddTime` datetime DEFAULT NULL COMMENT '添加时间',
  `ModifyManagerId` int(11) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `IsDelete` tinyint(1) NOT NULL COMMENT '是否删除',
  `Remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台管理员角色';

-- ----------------------------
-- Table structure for Menu
-- ----------------------------
DROP TABLE IF EXISTS `Menu`;
CREATE TABLE `Menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ParentId` int(11) NOT NULL COMMENT '父菜单ID',
  `Name` varchar(32) NOT NULL COMMENT '名称',
  `DisplayName` varchar(128) DEFAULT NULL COMMENT '显示名称',
  `IconUrl` varchar(128) DEFAULT NULL COMMENT '图标地址',
  `LinkUrl` varchar(128) DEFAULT NULL COMMENT '链接地址',
  `Sort` int(11) DEFAULT '0' COMMENT '排序数字',
  `Permission` varchar(256) DEFAULT NULL COMMENT '操作权限（按钮权限时使用）',
  `IsDisplay` tinyint(1) NOT NULL COMMENT '是否显示',
  `IsSystem` tinyint(1) NOT NULL COMMENT '是否系统默认',
  `AddManagerId` int(11) NOT NULL COMMENT '添加人',
  `AddTime` datetime DEFAULT NULL COMMENT '添加时间',
  `ModifyManagerId` int(11) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `IsDelete` tinyint(1) NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台管理菜单';

-- ----------------------------
-- Table structure for RolePermission
-- ----------------------------
DROP TABLE IF EXISTS `RolePermission`;
CREATE TABLE `RolePermission` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `RoleId` int(11) NOT NULL COMMENT '角色主键',
  `MenuId` int(11) NOT NULL COMMENT '菜单主键',
  `Permission` varchar(128) DEFAULT NULL COMMENT '操作类型（功能权限）',
  PRIMARY KEY (`Id`),
  KEY `FK_Relationship_1` (`MenuId`),
  KEY `FK_Relationship_2` (`RoleId`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`MenuId`) REFERENCES `Menu` (`Id`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`RoleId`) REFERENCES `ManagerRole` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Table structure for TaskInfo
-- ----------------------------
DROP TABLE IF EXISTS `TaskInfo`;
CREATE TABLE `TaskInfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(128) NOT NULL,
  `Group` varchar(128) NOT NULL,
  `Description` varchar(256) DEFAULT NULL,
  `Assembly` varchar(256) NOT NULL,
  `ClassName` varchar(256) NOT NULL,
  `Status` int(11) NOT NULL,
  `Cron` varchar(128) NOT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `NextTime` datetime DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `AddManagerId` int(11) NOT NULL,
  `IsDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务';
