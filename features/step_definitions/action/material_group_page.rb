#encoding: UTF-8
require File.dirname(__FILE__)+'/../tool/material_group'
class MaterialGroupPage
	include MaterialGroup

	#验证分组是否存在并返回该分组（分组名称）
	def materialgroup_name_exist(group_name)
		materialgroup_list_element.each do |rows|
			return rows.[](0).text if rows.[](0).text == group_name
		end
	end	

	#分组名称长度
	def materialgroup_name_length
		materialgroup_name_element.attribute('max_length')
	end

	#返回分组的编辑按钮
	def materialgroup_editorname(group_name)
		materialgroup_list_watir.rows.each do |rows|
			return rows.[](1).link(:index => 0) if rows.[](0).text == group_name
		end
	end	

	def materialgroup_editorname_click(group_name)
		materialgroup_editorname(group_name).click
	end	
end