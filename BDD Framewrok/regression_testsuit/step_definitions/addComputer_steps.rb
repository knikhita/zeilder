Given(/^I am on add computer page$/) do
  @browser = Selenium::WebDriver.for :chrome
  @browser.navigate.to "http://computer-database.herokuapp.com/computers/new"
end

When(/^I enter computer_name$/) do
  computer_name = @browser.find_element(:id =>'name').click()
  computer_name.send_keys(faker.name)
end

When(/^I enter introduced_date$/) do
  idate = @browser.find_element(:id =>'introduced').click()
  idate.send_keys(faker.date.backward(days: 14))
end

When(/^I enter Discontinued_date$/) do
  ddate = @browser.find_element(:id =>'discontinued').click()
  ddate.send_keys(faker.date.forward(days: 23))
end

When(/^I select company_name$/) do
  company_name = @browser.find_element(:id =>'company').click()
  company_array.each do { |str| company_name.send_keys(str, :return) }

end

Then(/^I press create_this_computer button$/) do
  submit = @browser.find_element(:type =>'submit').click()
end
