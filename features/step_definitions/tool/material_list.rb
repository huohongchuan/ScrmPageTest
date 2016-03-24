module MaterialList
	
	include PageObject

  #定位上传图片
	file_field(:load_image, :id => 'imgages')
#定位添加单图文
    in_iframe(:id => 'mainFrame') do |iframe|
    	link(:add_one_material, :id => 'addoneimg', :iframe => iframe)
    end
	link(:add_one_material, :id => 'addoneimg')
#定位图文标题
	text_field(:add_material_title, :id => 'title')
#定位图文作者
	text_field(:add_material_author, :id => 'author')
#定位图文描述
    text_field(:add_material_digest, :id => 'material-text-digest')

    def material_frame
    	@browser.iframe(:id => 'mainFrame').link(:id => 'addoneimg').click
    end


end