#require 'page-object'
module BaseMenu

	include PageObject

#微信管理一级菜单和二级菜单
	#微信管理一级菜单
	link(:wechat_manage, :id => 'menu_4')
	#素材管理
	link(:material_manage, :id => 'menu_6')
	#我的素材
	link(:my_material, :id => 'menu_6_42')



end	