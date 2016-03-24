#encoding: utf-8
Given /^我进入素材分组页面$/ do  
  material_group_page.navigate_to('http://app.test.social-touch.com/material/admin/group?ui=new&pf_uid=997_294&pf_type=3&bi_expire_time=1609430399&bi_minor_id=0&token=KSDFLSDF1123')

end

When /^点击添加分类$/ do 
   material_group_page.materialgroup_add
end

And /^输入分类名称(.*)$/ do |group_name|
	material_group_page.materialgroup_name=(group_name.to_s)
end

And /^点击保存$/ do
	material_group_page.materialgroup_save
end

Then /^我在素材分组列表可以查看到(.*)$/ do |material_author|
	material_group_page.wait_until(5,'succse') do
		material_group_page.materialgroup_list_element.exists?
	end
	expect(material_group_page.materialgroup_name_exist(material_author.to_s)).to eq(material_author.to_s)
	puts "------------------已经比对完成---------------"
end	

Then /^顶部提示(.*)$/ do |message|
	material_group_page.wait_until(5,'succse') do
		material_group_page.top_alert_element.exists?
	end
	expect(material_group_page.top_alert_element.text).to eq(message.to_s)
end	

Then /^分组名称输入长度限制为(\d+)个字符$/ do |max_lenth|
	puts material_group_page.materialgroup_name_length 
	puts max_lenth.to_i 
	expect(material_group_page.materialgroup_name_length.to_i).to eq(max_lenth.to_i)
end	

When /^我点击(.*)分组的编辑按钮$/ do |group_name|
	puts "-------开始点击编辑按钮------------------"
   material_group_page.materialgroup_editorname(group_name.to_s).click
   puts "------------已经结束----------------------"
end
