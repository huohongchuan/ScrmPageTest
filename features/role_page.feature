
Feature: 添加管理员

   我想添加一个客服管理员
   我可以添加一个客服管理员
@addrole
 Scenario Outline: 注册信息填写正确并添加管理员

  Given 我进入角色管理页面
  When 我点击添加用户按钮
  And 我在登录邮箱输入<email>
  And 我在密码输入<pwd1>
  And 我在确认密码输入<pwd2>
  And 我在真实姓名输入<name1>
  And 我在职位输入<job>
  And 我在选择用户分组选择<user_group>
  When 我点击保存按钮
  Then 我在角色管理页面可以搜索到<name2>

 Examples:
   |     email         | pwd1 | pwd2 |name1     |job |user_group|name2     |
   | test_scrm9@qq.com |123456|123456|test9     |销售|销售      |test_scrm9@qq.com|
   | test_scrm8@qq.com |123456|123456|test8     |研发|11        |test_scrm8@qq.com|
