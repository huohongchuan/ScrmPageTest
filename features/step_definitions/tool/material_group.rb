#encoding: utf-8
module MaterialGroup
	include PageObject

	#定位素材分组页面添加分类按钮
	link(:materialgroup_add, :class => 'social-btn-green marlf22')
	#定位分类名称
	text_field(:materialgroup_name, :name => 'group_name')
	#保存按钮
	link(:materialgroup_save, :class => 'social-btn-green')
	#分组页面返回按钮
	link(:materialgroup_return, :class => 'social-btn-gray returnbtn')
	#分组列表页面-分组列表
	table(:materialgroup_list, :id => 'marerial-class-list')
	#顶部提示
	div(:top_alert, :id => 'topalert')
	
	def materialgroup_list_watir
		@browser.table(:id => 'marerial-class-list')
	end	


end	