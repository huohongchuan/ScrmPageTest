module ScrmModule
	
	def role_page
		@role_page ||= RolePage.new(@browser)
	end

	def material_page
		@material_page ||= MaterialPage.new(@browser)
	end

	def material_group_page
		@material_group_page ||= MaterialGroupPage.new(@browser)
	end	
end


World(ScrmModule)