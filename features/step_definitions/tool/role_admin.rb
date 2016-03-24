#require 'page-object'

module RoleAdmin
	
	include PageObject

    
	#添加用户-登录邮箱
	text_field(:user_email, :id => 'email')

	#添加用户-登录密码1
	text_field(:user_pwd1, :id => 'pwd1')

	#添加用户-登录密码2
	text_field(:user_pwd2, :id => 'pwd2')

	#
	text_field(:user_name, :id => 'username')

	#
	text_field(:user_job, :id => 'jobtitle')

	#
	button(:user_save, :class => 'qx-btn qx-btn-hs')

	#ÓÃ»§·Ö×é±à¼­¿ò
	div(:user_group, :class => 'input-text input-select')

	#ÓÃ»§·Ö×éÁÐ±í
	div(:user_group_list, :class => 'h-group-td-tree')
    
	#ÓÃ»§·Ö×éÁÐ±íËùÓÐ·Ö×éÔªËØ
    def user_group_name
	    @browser.elements(:class => 'fancytree-title')
    end

	#role/admin 定位elements

	#定位添加用户按钮
	link(:add_user, :class => 'd-head-content-add qx-btn qx-btn-ls')

	#定位姓名、登录邮箱搜索框
	text_field(:select_user_input, :name => 'keyword')

	#定位筛选按钮
	link(:search_user, :class => 'qx-btn qx-btn-ls')


    #定位管理员列表
	def user_list
		@browser.table(:class => 'd-main-content-table')
	end

	div(:user_information, :id => 'l-pop-window')

	
end