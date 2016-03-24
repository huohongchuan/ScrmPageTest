require 'watir-webdriver'
require 'page-object'

Before do

  @browser = Watir::Browser.new :chrome
  @browser.window.maximize

  @login_page = LoginPage.new(@browser)
  @login_page.navigate_to('http://biz.test.social-touch.com/')

#添加cookie
  @login_page.clear_cookies
  @login_page.add_cookies('PHPSESSID','pn05te8o0vss8kkpmb2o6iq063')
  @login_page.add_cookies('PA_WEB_COOKIE','nQlUU8a50iOEG9BjogGjgZOYOVsYSdGsHL94tioMCLiGv9BGoHLM5p%2BkLU19r%2Fnzbskuo9XOAWzknDw0D%2BsXy%2FB0%2Fx0ZP2XdP0tP2b67kWbce4R5e1Yzr860ukxMapSJ%2FpcaowfYvm0%3D')
  sleep(3)
  @login_page.navigate_to('http://biz.test.social-touch.com/')
  
end




After do
  @browser.close
end