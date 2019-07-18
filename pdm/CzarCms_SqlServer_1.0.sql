/*
Navicat SQL Server Data Transfer

Source Server         : SQL Server
Source Server Version : 110000
Source Host           : 127.0.0.1:1433
Source Database       : CzarCms
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2019-07-18 09:37:36
*/


-- ----------------------------
-- Table structure for Article
-- ----------------------------
DROP TABLE [dbo].[Article]
GO
CREATE TABLE [dbo].[Article] (
[Id] int NOT NULL ,
[CategoryId] int NOT NULL ,
[Title] nvarchar(128) NOT NULL ,
[ImageUrl] nvarchar(128) NULL ,
[Content] nvarchar(MAX) NULL ,
[ViewCount] int NOT NULL ,
[Sort] int NOT NULL ,
[Author] nvarchar(64) NULL ,
[Source] nvarchar(128) NULL ,
[SeoTitle] nvarchar(128) NULL ,
[SeoKeyword] nvarchar(256) NULL ,
[SeoDescription] nvarchar(512) NULL ,
[AddManagerId] int NOT NULL ,
[AddTime] datetime2(0) NULL ,
[ModifyManagerId] int NULL ,
[ModifyTime] datetime2(0) NULL ,
[IsTop] tinyint NOT NULL ,
[IsSlide] tinyint NOT NULL ,
[IsRed] tinyint NOT NULL ,
[IsPublish] tinyint NOT NULL ,
[IsDeleted] tinyint NOT NULL 
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
-- Table structure for ArticleCategory
-- ----------------------------
DROP TABLE [dbo].[ArticleCategory]
GO
CREATE TABLE [dbo].[ArticleCategory] (
[Id] int NOT NULL ,
[Title] nvarchar(128) NOT NULL ,
[ParentId] int NOT NULL ,
[ClassList] nvarchar(128) NULL ,
[ClassLayer] int NULL ,
[Sort] int NOT NULL ,
[ImageUrl] nvarchar(128) NULL ,
[SeoTitle] nvarchar(128) NULL ,
[SeoKeywords] nvarchar(256) NULL ,
[SeoDescription] nvarchar(512) NULL ,
[IsDeleted] tinyint NOT NULL 
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
-- Table structure for Manager
-- ----------------------------
DROP TABLE [dbo].[Manager]
GO
CREATE TABLE [dbo].[Manager] (
[Id] int NOT NULL ,
[RoleId] int NOT NULL ,
[UserName] nvarchar(32) NOT NULL ,
[Password] nvarchar(128) NOT NULL ,
[Avatar] nvarchar(256) NULL ,
[NickName] nvarchar(32) NULL ,
[Mobile] nvarchar(16) NULL ,
[Email] nvarchar(128) NULL ,
[LoginCount] int NULL ,
[LoginLastIp] nvarchar(64) NULL ,
[LoginLastTime] datetime2(0) NULL ,
[AddManagerId] int NOT NULL ,
[AddTime] datetime2(0) NULL ,
[ModifyManagerId] int NULL ,
[ModifyTime] datetime2(0) NULL ,
[IsLock] tinyint NOT NULL ,
[IsDelete] tinyint NOT NULL ,
[Remark] nvarchar(128) NULL 
)


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
-- Table structure for ManagerLog
-- ----------------------------
DROP TABLE [dbo].[ManagerLog]
GO
CREATE TABLE [dbo].[ManagerLog] (
[Id] int NOT NULL ,
[ActionType] nvarchar(32) NULL ,
[AddManageId] int NOT NULL ,
[AddManagerNickName] nvarchar(64) NULL ,
[AddTime] datetime2(0) NULL ,
[AddIp] nvarchar(64) NULL ,
[Remark] nvarchar(256) NULL 
)


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
-- Table structure for ManagerRole
-- ----------------------------
DROP TABLE [dbo].[ManagerRole]
GO
CREATE TABLE [dbo].[ManagerRole] (
[Id] int NOT NULL ,
[RoleName] nvarchar(64) NOT NULL ,
[RoleType] int NOT NULL ,
[IsSystem] tinyint NOT NULL ,
[AddManagerId] int NOT NULL ,
[AddTime] datetime2(0) NULL ,
[ModifyManagerId] int NULL ,
[ModifyTime] datetime2(0) NULL ,
[IsDelete] tinyint NOT NULL ,
[Remark] nvarchar(128) NULL 
)


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
-- Table structure for Menu
-- ----------------------------
DROP TABLE [dbo].[Menu]
GO
CREATE TABLE [dbo].[Menu] (
[Id] int NOT NULL ,
[ParentId] int NOT NULL ,
[Name] nvarchar(32) NOT NULL ,
[DisplayName] nvarchar(128) NULL ,
[IconUrl] nvarchar(128) NULL ,
[LinkUrl] nvarchar(128) NULL ,
[Sort] int NULL ,
[Permission] nvarchar(256) NULL ,
[IsDisplay] tinyint NOT NULL ,
[IsSystem] tinyint NOT NULL ,
[AddManagerId] int NOT NULL ,
[AddTime] datetime2(0) NULL ,
[ModifyManagerId] int NULL ,
[ModifyTime] datetime2(0) NULL ,
[IsDelete] tinyint NOT NULL 
)


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
-- Table structure for RolePermission
-- ----------------------------
DROP TABLE [dbo].[RolePermission]
GO
CREATE TABLE [dbo].[RolePermission] (
[Id] int NOT NULL ,
[RoleId] int NOT NULL ,
[MenuId] int NOT NULL ,
[Permission] nvarchar(128) NULL 
)


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
-- Table structure for TaskInfo
-- ----------------------------
DROP TABLE [dbo].[TaskInfo]
GO
CREATE TABLE [dbo].[TaskInfo] (
[Id] int NOT NULL ,
[Name] nvarchar(128) NOT NULL ,
[Group] nvarchar(128) NOT NULL ,
[Description] nvarchar(256) NULL ,
[Assembly] nvarchar(256) NOT NULL ,
[ClassName] nvarchar(256) NOT NULL ,
[Status] int NOT NULL ,
[Cron] nvarchar(128) NOT NULL ,
[StartTime] datetime2(0) NULL ,
[EndTime] datetime2(0) NULL ,
[NextTime] datetime2(0) NULL ,
[AddTime] datetime2(0) NULL ,
[AddManagerId] int NOT NULL ,
[IsDelete] tinyint NOT NULL 
)


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
-- Indexes structure for table Article
-- ----------------------------
CREATE INDEX [FK_Relationship_5] ON [dbo].[Article]
([CategoryId] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table Article
-- ----------------------------
ALTER TABLE [dbo].[Article] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table ArticleCategory
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ArticleCategory
-- ----------------------------
ALTER TABLE [dbo].[ArticleCategory] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Manager
-- ----------------------------
CREATE INDEX [FK_Relationship_3] ON [dbo].[Manager]
([RoleId] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table Manager
-- ----------------------------
ALTER TABLE [dbo].[Manager] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table ManagerLog
-- ----------------------------
CREATE INDEX [FK_Relationship_4] ON [dbo].[ManagerLog]
([AddManageId] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table ManagerLog
-- ----------------------------
ALTER TABLE [dbo].[ManagerLog] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table ManagerRole
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ManagerRole
-- ----------------------------
ALTER TABLE [dbo].[ManagerRole] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Menu
-- ----------------------------
ALTER TABLE [dbo].[Menu] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table RolePermission
-- ----------------------------
CREATE INDEX [FK_Relationship_1] ON [dbo].[RolePermission]
([MenuId] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO
CREATE INDEX [FK_Relationship_2] ON [dbo].[RolePermission]
([RoleId] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table RolePermission
-- ----------------------------
ALTER TABLE [dbo].[RolePermission] ADD PRIMARY KEY ([Id])
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
ALTER TABLE [dbo].[RolePermission] ADD FOREIGN KEY ([MenuId]) REFERENCES [dbo].[Menu] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[RolePermission] ADD FOREIGN KEY ([RoleId]) REFERENCES [dbo].[ManagerRole] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
