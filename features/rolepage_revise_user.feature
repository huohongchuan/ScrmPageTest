
Feature: 选择管理员

   作为系统管理
   我可以查看一个管理员信息

 @revise
 Scenario: 查看一个普通管理员信息

   Given 我进入角色管理页面
   When 我选择管理员test_scrm7@qq.com并点击查看
   Then 我将看到一个个人资料弹窗