
Feature: 添加素材

   作为系统管理
   我想添加一条图文
   所以我可以添加图文到图文列表
 @material
 Scenario: 系统管理员添加一条单图文

   Given 我进入素材管理页面
   When 点击添加单图文
   And 输入素材标题国庆节庆祝
   And 输入素材描述国庆节庆祝十月一日
   And 上传图片C:\Users\admin\Desktop\图片\1111.jpg
   And 输入摘要国庆节庆祝
   And 输入正文国庆节
   And 点击保存按钮
   Then 我在素材管理页面可以查看到国庆节庆祝
