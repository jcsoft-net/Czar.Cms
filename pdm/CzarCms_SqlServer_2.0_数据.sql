/*
Navicat SQL Server Data Transfer

Source Server         : SQL Server
Source Server Version : 110000
Source Host           : 127.0.0.1:1433
Source Database       : CzarCms_git
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2019-07-24 14:40:05
*/


-- ----------------------------
-- Table structure for Article
-- ----------------------------
DROP TABLE [dbo].[Article]
GO
CREATE TABLE [dbo].[Article] (
[Id] int NOT NULL IDENTITY(1,1) ,
[CategoryId] int NOT NULL ,
[Title] varchar(128) NOT NULL ,
[ImageUrl] varchar(128) NULL ,
[Content] text NULL ,
[ViewCount] int NOT NULL ,
[Sort] int NOT NULL ,
[Author] varchar(64) NULL ,
[Source] varchar(128) NULL ,
[SeoTitle] varchar(128) NULL ,
[SeoKeyword] varchar(256) NULL ,
[SeoDescription] varchar(512) NULL ,
[AddManagerId] int NOT NULL ,
[AddTime] datetime NOT NULL DEFAULT (getdate()) ,
[ModifyManagerId] int NULL ,
[ModifyTime] datetime NULL ,
[IsTop] bit NOT NULL DEFAULT ((0)) ,
[IsSlide] bit NOT NULL DEFAULT ((0)) ,
[IsRed] bit NOT NULL DEFAULT ((0)) ,
[IsPublish] bit NOT NULL DEFAULT ((0)) ,
[IsDeleted] bit NOT NULL DEFAULT ((0)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'Id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'CategoryId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'分类ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'CategoryId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'分类ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'CategoryId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'Title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'ImageUrl')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'图片地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'ImageUrl'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'图片地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'ImageUrl'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'Content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'ViewCount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'浏览次数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'ViewCount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'浏览次数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'ViewCount'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'Sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Sort'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'Author')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Author'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Author'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'Source')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Source'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'Source'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'SeoTitle')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'SEO标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'SeoTitle'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'SEO标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'SeoTitle'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'SeoKeyword')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'SEO关键字'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'SeoKeyword'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'SEO关键字'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'SeoKeyword'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'SeoDescription')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'SEO描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'SeoDescription'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'SEO描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'SeoDescription'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'AddManagerId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加人ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'AddManagerId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加人ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'AddManagerId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'AddTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'AddTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'AddTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'ModifyManagerId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'ModifyManagerId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'ModifyManagerId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'ModifyTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'ModifyTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'ModifyTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'IsTop')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否置顶'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsTop'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否置顶'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsTop'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'IsSlide')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否轮播显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsSlide'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否轮播显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsSlide'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'IsRed')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否热门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsRed'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否热门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsRed'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'IsPublish')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否发布'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsPublish'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否发布'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsPublish'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Article', 
'COLUMN', N'IsDeleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsDeleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Article'
, @level2type = 'COLUMN', @level2name = N'IsDeleted'
GO

-- ----------------------------
-- Records of Article
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Article] ON
GO
SET IDENTITY_INSERT [dbo].[Article] OFF
GO

-- ----------------------------
-- Table structure for ArticleCategory
-- ----------------------------
DROP TABLE [dbo].[ArticleCategory]
GO
CREATE TABLE [dbo].[ArticleCategory] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Title] varchar(128) NOT NULL ,
[ParentId] int NOT NULL ,
[ClassList] varchar(128) NULL ,
[ClassLayer] int NULL ,
[Sort] int NOT NULL ,
[ImageUrl] varchar(128) NULL ,
[SeoTitle] varchar(128) NULL ,
[SeoKeywords] varchar(256) NULL ,
[SeoDescription] varchar(512) NULL ,
[IsDeleted] bit NOT NULL DEFAULT ((0)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章分类'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章分类'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'Id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'Id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'Id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'Title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'分类标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'Title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'分类标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'Title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'ParentId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父分类ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'ParentId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父分类ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'ParentId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'ClassList')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类别ID列表(逗号分隔开)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'ClassList'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类别ID列表(逗号分隔开)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'ClassList'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'ClassLayer')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类别深度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'ClassLayer'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类别深度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'ClassLayer'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'Sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'Sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'Sort'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'ImageUrl')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'分类图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'ImageUrl'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'分类图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'ImageUrl'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'SeoTitle')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'分类SEO标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'SeoTitle'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'分类SEO标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'SeoTitle'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'SeoKeywords')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'分类SEO关键字'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'SeoKeywords'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'分类SEO关键字'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'SeoKeywords'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'SeoDescription')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'分类SEO描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'SeoDescription'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'分类SEO描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'SeoDescription'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ArticleCategory', 
'COLUMN', N'IsDeleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'IsDeleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ArticleCategory'
, @level2type = 'COLUMN', @level2name = N'IsDeleted'
GO

-- ----------------------------
-- Records of ArticleCategory
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ArticleCategory] ON
GO
SET IDENTITY_INSERT [dbo].[ArticleCategory] OFF
GO

-- ----------------------------
-- Table structure for Manager
-- ----------------------------
DROP TABLE [dbo].[Manager]
GO
CREATE TABLE [dbo].[Manager] (
[Id] int NOT NULL IDENTITY(1,1) ,
[RoleId] int NOT NULL ,
[UserName] varchar(32) NOT NULL ,
[Password] varchar(128) NOT NULL ,
[Avatar] varchar(256) NULL ,
[NickName] varchar(32) NULL ,
[Mobile] varchar(16) NULL ,
[Email] varchar(128) NULL ,
[LoginCount] int NULL ,
[LoginLastIp] varchar(64) NULL ,
[LoginLastTime] datetime NULL ,
[AddManagerId] int NOT NULL ,
[AddTime] datetime NOT NULL DEFAULT (getdate()) ,
[ModifyManagerId] int NULL ,
[ModifyTime] datetime NULL ,
[IsLock] bit NOT NULL DEFAULT ((0)) ,
[IsDelete] bit NOT NULL DEFAULT ((0)) ,
[Remark] varchar(128) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Manager]', RESEED, 3)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'后台管理员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'后台管理员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'Id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'RoleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'RoleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'RoleId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'UserName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'UserName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'UserName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'Password')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Password'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Password'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'Avatar')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'头像'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Avatar'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'头像'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Avatar'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'NickName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'NickName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'NickName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'Mobile')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Mobile'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Mobile'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'Email')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'邮箱地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Email'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'邮箱地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Email'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'LoginCount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录次数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'LoginCount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录次数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'LoginCount'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'LoginLastIp')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后一次登录IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'LoginLastIp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后一次登录IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'LoginLastIp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'LoginLastTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后一次登录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'LoginLastTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后一次登录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'LoginLastTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'AddManagerId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'AddManagerId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'AddManagerId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'AddTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'AddTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'AddTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'ModifyManagerId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'ModifyManagerId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'ModifyManagerId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'ModifyTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'ModifyTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'ModifyTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'IsLock')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否锁定'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'IsLock'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否锁定'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'IsLock'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'IsDelete')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'IsDelete'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'IsDelete'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Manager', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Manager'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO

-- ----------------------------
-- Records of Manager
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Manager] ON
GO
INSERT INTO [dbo].[Manager] ([Id], [RoleId], [UserName], [Password], [Avatar], [NickName], [Mobile], [Email], [LoginCount], [LoginLastIp], [LoginLastTime], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsLock], [IsDelete], [Remark]) VALUES (N'3', N'1', N'admin', N'fyZ2Zo1fvskDRs/XjDf/OQ==', N'/upload/20190724/201907241432558053549.jpg', N'超级管理员', N'12345678912', N'860193679@qq.com', N'58', N'::1', N'2019-07-24 14:32:23.097', N'1', N'2019-01-01 21:46:18.557', N'3', N'2019-07-24 14:32:57.263', N'0', N'0', N'超级管理员,系统只能有一个这样的用户')
GO
GO
SET IDENTITY_INSERT [dbo].[Manager] OFF
GO

-- ----------------------------
-- Table structure for ManagerLog
-- ----------------------------
DROP TABLE [dbo].[ManagerLog]
GO
CREATE TABLE [dbo].[ManagerLog] (
[Id] int NOT NULL IDENTITY(1,1) ,
[ActionType] varchar(32) NULL ,
[AddManageId] int NOT NULL ,
[AddManagerNickName] varchar(64) NULL ,
[AddTime] datetime NOT NULL DEFAULT (getdate()) ,
[AddIp] varchar(64) NULL ,
[Remark] varchar(256) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[ManagerLog]', RESEED, 1056)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerLog', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作日志'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作日志'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerLog', 
'COLUMN', N'ActionType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'ActionType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'ActionType'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerLog', 
'COLUMN', N'AddManageId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'AddManageId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'AddManageId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerLog', 
'COLUMN', N'AddManagerNickName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作人名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'AddManagerNickName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作人名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'AddManagerNickName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerLog', 
'COLUMN', N'AddTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'AddTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'AddTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerLog', 
'COLUMN', N'AddIp')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'AddIp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'AddIp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerLog', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerLog'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO

-- ----------------------------
-- Records of ManagerLog
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ManagerLog] ON
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1', N'SignIn', N'3', N'超级管理员', N'2019-01-23 12:55:36.307', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'2', N'SignIn', N'3', N'超级管理员', N'2019-01-23 14:09:00.933', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'3', N'SignIn', N'3', N'超级管理员', N'2019-01-23 15:53:57.433', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'4', N'SignIn', N'3', N'超级管理员', N'2019-01-24 22:57:19.250', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'5', N'SignIn', N'3', N'超级管理员', N'2019-01-25 10:11:16.543', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'6', N'SignIn', N'3', N'超级管理员', N'2019-01-25 10:30:54.277', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'8', N'SignIn', N'3', N'超级管理员', N'2019-01-28 22:10:42.000', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'9', N'SignIn', N'3', N'超级管理员', N'2019-01-28 22:40:32.997', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'10', N'SignIn', N'3', N'超级管理员', N'2019-02-18 12:34:19.940', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'11', N'SignIn', N'3', N'超级管理员', N'2019-02-18 13:30:56.953', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'12', N'SignIn', N'3', N'超级管理员', N'2019-02-18 13:35:04.343', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'13', N'SignIn', N'3', N'超级管理员', N'2019-02-18 13:39:10.247', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'14', N'SignIn', N'3', N'超级管理员', N'2019-02-18 14:27:33.897', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'15', N'SignIn', N'3', N'超级管理员', N'2019-02-18 14:57:51.820', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'16', N'SignIn', N'3', N'超级管理员', N'2019-02-18 16:00:19.983', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'17', N'SignIn', N'3', N'超级管理员', N'2019-02-18 16:01:17.193', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'18', N'SignIn', N'3', N'超级管理员', N'2019-02-18 16:41:36.153', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'19', N'SignIn', N'3', N'超级管理员', N'2019-02-18 17:22:48.397', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'20', N'SignIn', N'3', N'超级管理员', N'2019-02-18 17:41:35.090', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'21', N'SignIn', N'3', N'超级管理员', N'2019-02-18 18:48:45.793', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'22', N'SignIn', N'3', N'超级管理员', N'2019-03-05 21:57:33.547', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'23', N'SignIn', N'3', N'超级管理员', N'2019-03-05 22:30:22.397', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1022', N'SignIn', N'3', N'超级管理员', N'2019-03-12 11:58:54.817', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1023', N'SignIn', N'3', N'超级管理员', N'2019-03-12 12:39:32.060', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1024', N'SignIn', N'3', N'超级管理员', N'2019-03-12 13:22:14.103', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1025', N'SignIn', N'3', N'超级管理员', N'2019-03-12 14:42:37.153', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1026', N'SignIn', N'3', N'超级管理员', N'2019-03-12 14:58:32.130', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1027', N'SignIn', N'3', N'超级管理员', N'2019-03-12 15:35:05.457', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1028', N'SignIn', N'3', N'超级管理员', N'2019-03-12 15:51:10.527', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1029', N'SignIn', N'3', N'超级管理员', N'2019-03-12 16:15:25.527', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1030', N'SignIn', N'3', N'超级管理员', N'2019-03-12 16:43:05.427', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1031', N'SignIn', N'3', N'超级1管理员', N'2019-03-12 20:41:28.770', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1032', N'SignIn', N'3', N'超级管理员', N'2019-03-12 21:43:41.877', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1033', N'SignIn', N'3', N'超级管理员', N'2019-03-12 21:48:10.543', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1034', N'SignIn', N'3', N'超级管理员', N'2019-03-13 12:36:31.397', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1035', N'SignIn', N'3', N'超级管理员', N'2019-03-13 15:15:33.770', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1038', N'SignIn', N'3', N'超级管理员', N'2019-03-13 21:23:27.183', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1039', N'SignIn', N'3', N'超级管理员', N'2019-03-14 09:59:29.237', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1041', N'SignIn', N'3', N'超级管理员', N'2019-03-14 11:44:13.440', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1042', N'SignIn', N'3', N'超级管理员', N'2019-03-14 12:27:52.657', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1043', N'SignIn', N'3', N'超级管理员', N'2019-03-15 16:37:15.663', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1044', N'SignIn', N'3', N'超级管理员', N'2019-03-15 16:47:46.353', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1045', N'SignIn', N'3', N'超级管理员', N'2019-03-15 21:43:34.983', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1046', N'SignIn', N'3', N'超级管理员', N'2019-03-15 22:05:19.927', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1047', N'SignIn', N'3', N'超级管理员', N'2019-03-18 14:53:54.537', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1048', N'SignIn', N'3', N'超级管理员', N'2019-03-18 17:20:23.613', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1049', N'SignIn', N'3', N'超级管理员', N'2019-03-18 17:49:04.407', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1050', N'SignIn', N'3', N'超级管理员', N'2019-03-18 18:25:41.900', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1051', N'SignIn', N'3', N'超级管理员', N'2019-03-18 19:11:29.683', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1052', N'SignIn', N'3', N'超级管理员', N'2019-03-20 10:58:54.833', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1053', N'SignIn', N'3', N'超级管理员', N'2019-03-20 11:17:23.440', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'7', N'SignIn', N'3', N'超级管理员', N'2019-01-25 13:18:55.490', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1036', N'SignIn', N'3', N'超级管理员', N'2019-03-13 17:05:52.147', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1037', N'SignIn', N'3', N'超级管理员', N'2019-03-13 17:25:25.967', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1040', N'SignIn', N'3', N'超级管理员', N'2019-03-14 11:23:16.200', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1054', N'SignIn', N'3', N'超级管理员', N'2019-07-24 14:12:23.623', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1055', N'SignIn', N'3', N'超级管理员', N'2019-07-24 14:15:16.377', N'::1', N'用户登录')
GO
GO
INSERT INTO [dbo].[ManagerLog] ([Id], [ActionType], [AddManageId], [AddManagerNickName], [AddTime], [AddIp], [Remark]) VALUES (N'1056', N'SignIn', N'3', N'超级管理员', N'2019-07-24 14:32:23.177', N'::1', N'用户登录')
GO
GO
SET IDENTITY_INSERT [dbo].[ManagerLog] OFF
GO

-- ----------------------------
-- Table structure for ManagerRole
-- ----------------------------
DROP TABLE [dbo].[ManagerRole]
GO
CREATE TABLE [dbo].[ManagerRole] (
[Id] int NOT NULL IDENTITY(1,1) ,
[RoleName] varchar(64) NOT NULL ,
[RoleType] int NOT NULL ,
[IsSystem] bit NOT NULL ,
[AddManagerId] int NOT NULL ,
[AddTime] datetime NOT NULL DEFAULT (getdate()) ,
[ModifyManagerId] int NULL ,
[ModifyTime] datetime NULL ,
[IsDelete] bit NOT NULL ,
[Remark] varchar(128) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[ManagerRole]', RESEED, 15)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'后台管理员角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'后台管理员角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'Id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'Id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'Id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'RoleName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'RoleName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'RoleName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'RoleType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色类型1超管2系管'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'RoleType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色类型1超管2系管'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'RoleType'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'IsSystem')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否系统默认'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'IsSystem'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否系统默认'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'IsSystem'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'AddManagerId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'AddManagerId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'AddManagerId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'AddTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'AddTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'AddTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'ModifyManagerId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'ModifyManagerId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'ModifyManagerId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'ModifyTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'ModifyTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'ModifyTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'IsDelete')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'IsDelete'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'IsDelete'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ManagerRole', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ManagerRole'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO

-- ----------------------------
-- Records of ManagerRole
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ManagerRole] ON
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'1', N'超级管理员', N'1', N'0', N'1', N'2018-12-30 15:53:59.957', N'1', N'2019-03-13 12:37:48.643', N'0', N'超级管理员，拥有系统最高权限，Bug般的存在')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'2', N'系统管理员', N'2', N'1', N'1', N'2018-12-30 16:22:03.670', null, null, N'0', N'系统管理员，顾名思义CMS系统的管理员，可以对系统管理员进行相关权限的个性化配置')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'3', N'编辑', N'2', N'0', N'1', N'2018-12-30 19:40:34.363', N'1', N'2018-12-30 21:53:02.787', N'0', N'拥有文章内容编辑权限')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'4', N'编辑2', N'2', N'0', N'1', N'2018-12-30 19:44:06.670', N'1', N'2018-12-31 17:06:46.713', N'0', N'编辑2')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'8', N'编辑6', N'2', N'0', N'1', N'2018-12-30 19:51:28.067', null, null, N'0', N'编辑6')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'11', N'编辑9', N'2', N'0', N'1', N'2018-12-30 20:36:43.080', N'1', N'2018-12-30 21:52:15.520', N'0', N'编辑9')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'12', N'编辑10', N'2', N'0', N'1', N'2018-12-30 23:05:04.340', null, null, N'0', N'编辑10')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'15', N'编辑11', N'2', N'0', N'1', N'2019-01-16 15:02:06.717', N'1', N'2019-01-17 22:43:11.273', N'0', N'编辑11')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'5', N'编辑3', N'2', N'0', N'1', N'2018-12-30 19:47:07.513', N'1', N'2018-12-30 21:52:53.013', N'0', N'编辑3')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'6', N'编辑4', N'2', N'0', N'1', N'2018-12-30 19:48:37.447', null, null, N'0', N'编辑4')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'9', N'编辑7', N'2', N'0', N'1', N'2018-12-30 19:53:25.263', N'1', N'2018-12-30 21:52:30.210', N'0', N'编辑7')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'10', N'编辑8', N'2', N'0', N'1', N'2018-12-30 19:57:25.350', null, null, N'0', N'编辑8')
GO
GO
INSERT INTO [dbo].[ManagerRole] ([Id], [RoleName], [RoleType], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete], [Remark]) VALUES (N'7', N'编辑5', N'2', N'0', N'1', N'2018-12-30 19:50:01.297', N'1', N'2018-12-31 12:39:19.817', N'0', N'编辑5')
GO
GO
SET IDENTITY_INSERT [dbo].[ManagerRole] OFF
GO

-- ----------------------------
-- Table structure for Menu
-- ----------------------------
DROP TABLE [dbo].[Menu]
GO
CREATE TABLE [dbo].[Menu] (
[Id] int NOT NULL IDENTITY(1,1) ,
[ParentId] int NOT NULL ,
[Name] varchar(32) NOT NULL ,
[DisplayName] varchar(128) NULL ,
[IconUrl] varchar(128) NULL ,
[LinkUrl] varchar(128) NULL ,
[Sort] int NULL DEFAULT ((0)) ,
[Permission] varchar(256) NULL ,
[IsDisplay] bit NOT NULL DEFAULT ((1)) ,
[IsSystem] bit NOT NULL DEFAULT ((0)) ,
[AddManagerId] int NOT NULL ,
[AddTime] datetime NOT NULL DEFAULT (getdate()) ,
[ModifyManagerId] int NULL ,
[ModifyTime] datetime NULL ,
[IsDelete] bit NOT NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[Menu]', RESEED, 1009)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'后台管理菜单'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'后台管理菜单'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'Id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'Id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'Id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'ParentId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'ParentId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'ParentId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'DisplayName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'显示名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'DisplayName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'显示名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'DisplayName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'IconUrl')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'图标地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'IconUrl'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'图标地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'IconUrl'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'LinkUrl')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'链接地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'LinkUrl'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'链接地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'LinkUrl'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'Sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序数字'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'Sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序数字'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'Sort'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'Permission')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作权限（按钮权限时使用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'Permission'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作权限（按钮权限时使用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'Permission'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'IsDisplay')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'IsDisplay'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'IsDisplay'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'IsSystem')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否系统默认'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'IsSystem'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否系统默认'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'IsSystem'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'AddManagerId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'AddManagerId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'AddManagerId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'AddTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'AddTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'AddTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'ModifyManagerId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'ModifyManagerId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'ModifyManagerId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'ModifyTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'ModifyTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'ModifyTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Menu', 
'COLUMN', N'IsDelete')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'IsDelete'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Menu'
, @level2type = 'COLUMN', @level2name = N'IsDelete'
GO

-- ----------------------------
-- Records of Menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Menu] ON
GO
INSERT INTO [dbo].[Menu] ([Id], [ParentId], [Name], [DisplayName], [IconUrl], [LinkUrl], [Sort], [Permission], [IsDisplay], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete]) VALUES (N'6', N'0', N'system_setting', N'系统管理', N'&#xe620;', null, N'99', null, N'1', N'1', N'1', N'2019-01-05 18:45:02.033', N'1', N'2019-01-08 14:14:29.400', N'0')
GO
GO
INSERT INTO [dbo].[Menu] ([Id], [ParentId], [Name], [DisplayName], [IconUrl], [LinkUrl], [Sort], [Permission], [IsDisplay], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete]) VALUES (N'7', N'0', N'content_manage', N'内容管理', N'&#xe63c;', null, N'99', null, N'1', N'1', N'1', N'2019-01-05 18:46:26.027', N'1', N'2019-01-08 14:13:08.183', N'0')
GO
GO
INSERT INTO [dbo].[Menu] ([Id], [ParentId], [Name], [DisplayName], [IconUrl], [LinkUrl], [Sort], [Permission], [IsDisplay], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete]) VALUES (N'1006', N'6', N'user_manage', N'用户管理', N'&#xe612;', N'/Manager/Index', N'99', null, N'1', N'1', N'1', N'2019-01-08 14:12:28.487', N'1', N'2019-01-09 22:23:02.020', N'0')
GO
GO
INSERT INTO [dbo].[Menu] ([Id], [ParentId], [Name], [DisplayName], [IconUrl], [LinkUrl], [Sort], [Permission], [IsDisplay], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete]) VALUES (N'1007', N'6', N'role_manager', N'角色管理', N'icon-vip', N'/ManagerRole/Index', N'99', null, N'1', N'1', N'1', N'2019-01-08 14:18:31.633', N'1', N'2019-01-09 22:22:54.590', N'0')
GO
GO
INSERT INTO [dbo].[Menu] ([Id], [ParentId], [Name], [DisplayName], [IconUrl], [LinkUrl], [Sort], [Permission], [IsDisplay], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete]) VALUES (N'1008', N'6', N'menu_manager', N'菜单管理', N'icon-caidan', N'/Menu/Index', N'99', null, N'1', N'1', N'1', N'2019-01-08 14:19:13.537', N'1', N'2019-01-28 22:22:50.710', N'0')
GO
GO
INSERT INTO [dbo].[Menu] ([Id], [ParentId], [Name], [DisplayName], [IconUrl], [LinkUrl], [Sort], [Permission], [IsDisplay], [IsSystem], [AddManagerId], [AddTime], [ModifyManagerId], [ModifyTime], [IsDelete]) VALUES (N'1009', N'6', N'task_info', N'任务管理', N'&#xe620;', N'/TaskInfo/Index', N'99', null, N'1', N'1', N'1', N'2019-03-13 12:37:23.173', N'1', N'2019-03-13 12:37:36.740', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO

-- ----------------------------
-- Table structure for NLog
-- ----------------------------
DROP TABLE [dbo].[NLog]
GO
CREATE TABLE [dbo].[NLog] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Application] nvarchar(50) NULL ,
[Logged] datetime NULL ,
[Level] nvarchar(50) NULL ,
[Message] nvarchar(MAX) NULL ,
[Logger] nvarchar(250) NULL ,
[Callsite] nvarchar(512) NULL ,
[Exception] nvarchar(MAX) NULL 
)


GO

-- ----------------------------
-- Records of NLog
-- ----------------------------
SET IDENTITY_INSERT [dbo].[NLog] ON
GO
SET IDENTITY_INSERT [dbo].[NLog] OFF
GO

-- ----------------------------
-- Table structure for RolePermission
-- ----------------------------
DROP TABLE [dbo].[RolePermission]
GO
CREATE TABLE [dbo].[RolePermission] (
[Id] int NOT NULL IDENTITY(1,1) ,
[RoleId] int NOT NULL ,
[MenuId] int NOT NULL ,
[Permission] varchar(128) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[RolePermission]', RESEED, 1025)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RolePermission', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色权限表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色权限表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RolePermission', 
'COLUMN', N'Id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'Id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'Id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RolePermission', 
'COLUMN', N'RoleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'RoleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'RoleId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RolePermission', 
'COLUMN', N'MenuId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'MenuId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'MenuId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RolePermission', 
'COLUMN', N'Permission')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作类型（功能权限）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'Permission'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作类型（功能权限）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'Permission'
GO

-- ----------------------------
-- Records of RolePermission
-- ----------------------------
SET IDENTITY_INSERT [dbo].[RolePermission] ON
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'14', N'15', N'6', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'15', N'15', N'1006', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'16', N'15', N'1007', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'17', N'15', N'1008', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'18', N'15', N'7', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'1020', N'1', N'6', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'1021', N'1', N'1006', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'1022', N'1', N'1007', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'1023', N'1', N'1008', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'1024', N'1', N'1009', N'')
GO
GO
INSERT INTO [dbo].[RolePermission] ([Id], [RoleId], [MenuId], [Permission]) VALUES (N'1025', N'1', N'7', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[RolePermission] OFF
GO

-- ----------------------------
-- Table structure for TaskInfo
-- ----------------------------
DROP TABLE [dbo].[TaskInfo]
GO
CREATE TABLE [dbo].[TaskInfo] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Name] varchar(128) NOT NULL ,
[Group] varchar(128) NOT NULL ,
[Description] varchar(256) NULL ,
[Assembly] varchar(256) NOT NULL ,
[ClassName] varchar(256) NOT NULL ,
[Status] int NOT NULL ,
[Cron] varchar(128) NOT NULL ,
[AddTime] datetime NULL ,
[AddManagerId] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[TaskInfo]', RESEED, 5)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'TaskInfo', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'定时任务'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'TaskInfo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'定时任务'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'TaskInfo'
GO

-- ----------------------------
-- Records of TaskInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[TaskInfo] ON
GO
INSERT INTO [dbo].[TaskInfo] ([Id], [Name], [Group], [Description], [Assembly], [ClassName], [Status], [Cron], [AddTime], [AddManagerId]) VALUES (N'5', N'LogTestJob', N'TestGroup', N'测试Log', N'E:\workspace\vs2017\Czar.Cms\src\Czar.Cms.Admin\bin\Debug\netcoreapp2.2\Czar.Cms.Job.dll', N'Czar.Cms.Job.LogTestJob', N'2', N'*/5 * * * * ?', N'2019-03-18 19:28:05.020', N'3')
GO
GO
SET IDENTITY_INSERT [dbo].[TaskInfo] OFF
GO

-- ----------------------------
-- Indexes structure for table Article
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Article
-- ----------------------------
ALTER TABLE [dbo].[Article] ADD PRIMARY KEY NONCLUSTERED ([Id])
GO

-- ----------------------------
-- Indexes structure for table ArticleCategory
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ArticleCategory
-- ----------------------------
ALTER TABLE [dbo].[ArticleCategory] ADD PRIMARY KEY NONCLUSTERED ([Id])
GO

-- ----------------------------
-- Indexes structure for table Manager
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Manager
-- ----------------------------
ALTER TABLE [dbo].[Manager] ADD PRIMARY KEY NONCLUSTERED ([Id])
GO

-- ----------------------------
-- Indexes structure for table ManagerLog
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ManagerLog
-- ----------------------------
ALTER TABLE [dbo].[ManagerLog] ADD PRIMARY KEY NONCLUSTERED ([Id])
GO

-- ----------------------------
-- Indexes structure for table ManagerRole
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ManagerRole
-- ----------------------------
ALTER TABLE [dbo].[ManagerRole] ADD PRIMARY KEY NONCLUSTERED ([Id])
GO

-- ----------------------------
-- Indexes structure for table Menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Menu
-- ----------------------------
ALTER TABLE [dbo].[Menu] ADD PRIMARY KEY NONCLUSTERED ([Id])
GO

-- ----------------------------
-- Indexes structure for table NLog
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table NLog
-- ----------------------------
ALTER TABLE [dbo].[NLog] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table RolePermission
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table RolePermission
-- ----------------------------
ALTER TABLE [dbo].[RolePermission] ADD PRIMARY KEY NONCLUSTERED ([Id])
GO

-- ----------------------------
-- Indexes structure for table TaskInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TaskInfo
-- ----------------------------
ALTER TABLE [dbo].[TaskInfo] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Article]
-- ----------------------------
ALTER TABLE [dbo].[Article] ADD FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[ArticleCategory] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Manager]
-- ----------------------------
ALTER TABLE [dbo].[Manager] ADD FOREIGN KEY ([RoleId]) REFERENCES [dbo].[ManagerRole] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[ManagerLog]
-- ----------------------------
ALTER TABLE [dbo].[ManagerLog] ADD FOREIGN KEY ([AddManageId]) REFERENCES [dbo].[Manager] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[RolePermission]
-- ----------------------------
ALTER TABLE [dbo].[RolePermission] ADD FOREIGN KEY ([RoleId]) REFERENCES [dbo].[ManagerRole] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[RolePermission] ADD FOREIGN KEY ([MenuId]) REFERENCES [dbo].[Menu] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
