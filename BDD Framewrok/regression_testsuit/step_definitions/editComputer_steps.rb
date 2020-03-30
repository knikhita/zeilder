Given(/^I am on edit computer page$/) do
  @browser = Selenium::WebDriver.for :chrome
  @browser.navigate.to "http://computer-database.herokuapp.com/computers/500";
end

When(/^I change computer_name$/) do
  computer_name = @browser.find_element(:id =>'name').click()
  computer_name.send_keys(faker.name)
end

When(/^I change introduced_date$/) do
  idate = @browser.find_element(:id =>'introduced').click()
  idate.send_keys(faker.date.backward(days: 10))
end

When(/^I change Discontinued_date$/) do
  ddate = @browser.find_element(:id =>'discontinued').click()
  ddate.send_keys(faker.date.forward(days: 13))
end

When(/^I change company_name$/) do
  company_name = @browser.find_element(:id =>'company').click()
  company_array.each do { |str| company_name.send_keys(str, :return) }

end

Then(/^I press save_this_computer button$/) do
  submit = @browser.find_element(:type =>'submit').click()
  assert(@browser.find_element(:class => "alert-message warning").text.include?("has been updated"))
end
