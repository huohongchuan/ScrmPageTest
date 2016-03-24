#encoding: utf-8
Given /^我进入素材管理页面$/ do  
  material_page.navigate_to('http://app.test.social-touch.com/material/admin/list?ui=new&pf_uid=997_294&pf_type=3&bi_expire_time=1609430399&bi_minor_id=0&token=KSDFLSDF1123')

end

When /^点击添加单图文$/ do 
   material_page.add_one_material
end

And /^上传图片(.*)$/ do |fild_path|
	material_page.load_image = fild_path.to_s
end

And /^输入素材标题(.*)$/ do |material_title|
	#material_page
end

And /^输入素材描述(.*)$/ do |material_author|
	#material_page
end	

And /^输入摘要(.*)$/ do |material_digest|
	#material_page
end	

And /^输入正文(.*)$/ do |material_body|
	#material_page
end	