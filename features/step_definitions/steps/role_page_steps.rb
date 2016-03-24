#encoding: utf-8
Given /^我进入角色管理页面$/ do
  #role_page = RolePage.new(@browser)
  role_page.navigate_to('http://app.test.social-touch.com/role/admin/index?ui=new&pf_uid=997_684&pf_type=3&bi_expire_time=1609430399&bi_minor_id=0&token=KSDFLSDF1123&wx_id=684&pmid=997&session=')
end

When /^我点击添加用户按钮$/ do
  role_page.user_add if role_page.user_add_element
end

And /^我在登录邮箱输入(.*)$/ do |email|
	role_page.user_email=(email.to_s)
end

And /^邮箱长度大于(\d+)位小于(\d+)位$/ do |min,max|
	expect(role_page.user_email_minlength).to eq(min.to_i)
	expect(role_page.user_email_maxlength).to eq(max.to_i)

end

When(/^我在密码输入(\d+)$/) do |pwd|
  role_page.user_pwd1=(pwd.to_s)
end

When(/^我在确认密码输入(\d+)$/) do |pwd|
  role_page.user_pwd2=(pwd.to_s)
end

When(/^我在真实姓名输入(.*)$/) do |name|
  role_page.user_name=(name.to_s)
end

When(/^我在职位输入(.*)$/) do |job|
  role_page.user_job=(job.to_s)
end

When(/^我在选择用户分组选择(.*)$/) do |name|
  role_page.user_group_element.click
  role_page.wait_until(5,'Success not found on page') do 
	role_page.user_group_list_element.exists?
  end
  role_page.select_user_group(name.to_s)
end


When(/^我点击保存按钮$/) do
  role_page.user_save
end

Then(/^我在角色管理页面可以搜索到(.*)$/) do |name|
	role_page.select_user_input=(name.to_s)
	role_page.search_user
end


When(/^我选择管理员(.*)并点击查看$/) do |email|
  role_page.wait_until(5,'Success not found on page') do 
	role_page.user_list.exists?
  end
  role_page.select_user(email.to_s)
end

Then(/^我将看到一个个人资料弹窗$/) do
  role_page.user_information_exist
end
