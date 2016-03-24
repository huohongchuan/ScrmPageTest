#encoding: utf-8
class BasePage

#初始化浏览器
	def initialize
		@browser = watir::Browser.new :chrome
	end

#访问指定url
	def open(url)
		@browser.goto url
	end

#浏览器关闭方法
	def close
		@browser.close
	end




end