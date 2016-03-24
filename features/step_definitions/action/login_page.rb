#encoding: utf-8
require 'watir-webdriver'
require 'page-object'

class LoginPage
	include PageObject

	#定义添加cookie方法
	def add_cookies(name, vale, opts={})
		@browser.cookies.add(name, vale, opts={})
	end


end