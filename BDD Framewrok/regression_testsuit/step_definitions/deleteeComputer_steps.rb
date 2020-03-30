Given(/^I am on edit computer page$/) do
  @browser = Selenium::WebDriver.for :chrome
  @browser.navigate.to "http://computer-database.herokuapp.com/computers/" + rand(-1000);
end

When(/^I press delete_this_computer button$/) do
  delete = @browser.find_element(:class =>'.btn .danger').click()
end

Then(/^I see confirmation Notification$/) do
  assert(@browser.find_element(:class => "alert-message warning").text.include?("Computer has been deleted"))
end
