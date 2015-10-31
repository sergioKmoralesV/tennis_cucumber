Given(/^I open web page$/) do
  visit '/'
end


Then /^I show message "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end


Then(/^I expect see button "([^"]*)" to "([^"]*)"$/ ) do |text,url|
  click_link(text)
end
