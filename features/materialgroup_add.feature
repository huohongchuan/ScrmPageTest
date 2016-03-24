
Feature: 添加素材分组
    作为系统管理员
    我想添加素材分组
    以便更好的管理素材
 @materialgroup_add
 Scenario: 添加一个分组名称小于10个汉字的分组

   Given 我进入素材分组页面
   When 点击添加分类
   And 输入分类名称活跃用户
   And 点击保存
   Then 我在素材分组列表可以查看到活跃用户

 @materialgroup_name_empty
 Scenario: 添加一个分组名称为空的分组

   Given 我进入素材分组页面
   When 点击添加分类
   And 点击保存
   Then 顶部提示请输入分类名称  

 @materialgroup_name_maxlenth
 Scenario: 验证分组名称输入长度验证

   Given 我进入素材分组页面
   When 点击添加分类
   And 输入分类名称一二三四五六七八九十个字
   Then 分组名称输入长度限制为20个字符
   And 点击保存
   Then 我在素材分组列表可以查看到一二三四五六七八九十 

 @materialgroup_name_repeat
 Scenario: 验证分组名称能否重复

   Given 我进入素材分组页面
   When 点击添加分类
   And 输入分类名称重复用户名称
   And 点击保存
   Then 我在素材分组列表可以查看到重复用户名称
   When 点击添加分类
   And 输入分类名称重复用户名称
   And 点击保存
   Then 顶部提示分类名称已存在


 @materialgroup5
 Scenario Outline: 未实现素材分组最多可以添加20个

   Given 我进入素材分组页面
   When 点击添加分类
   And 输入分类名称<materialgroupname>
   And 点击保存
   Then 我在素材分组列表可以查看到<materialgroupname>

Examples:
  |materialgroupname|
  |大客户1|
  |大客户2|
  |大客户3|
  |大客户4|
  |大客户5|
  |大客户6|
  |大客户7|
  |大客户8|
  |大客户9|
  |大客户10|
  |大客户11|
  |大客户12|
  |大客户13|
  |大客户14|
  |大客户15|
  |大客户16|
  |大客户17|
  |大客户18|
  |大客户19|
  |大客户20|
