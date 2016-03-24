#encoding: utf-8
require File.dirname(__FILE__)+'/../tool/role_admin'

class RolePage
	
	include RoleAdmin

	#点击添加管理员
	def user_add
		add_user
	end

	#检查添加按钮元素是否存在
	def user_add_element
		add_user_element.exists?
	end

	#检查邮箱输入框长度限制
	def user_email_minlength
		user_email_element.attribute_value("minlength")
	end

	def user_email_maxlength
		user_email_element.attribute_value("maxlength")
	end

	#选择分组
	def select_user_group(name)
		user_group_name.each do |val|
			val.click if val.text == name
		end
	end
    
	#选择指定邮箱用户信息，点击查看
    def select_user(email)
		user_list.rows.each do |user|
			user.[](5).click if user.[](3).text == email
		end
    end
    #判断是否弹出个人资料
    def user_information_exist
    	wait_until(5,'Success not found on page') do
    		user_information_element.exists?
    	end
    end

end