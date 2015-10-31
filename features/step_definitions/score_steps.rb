Given(/^I should be on the page of the game$/) do
  visit '/'
  click_link('empezar')
end

Then(/^I should see button "([^"]*)"$/) do |boton|
  click_button(/#{boton}/)
  visit '/score'
end

Then(/^I see result "(.*)"$/) do |scorer|
  visit '/score'
  last_response.body.should =~ /#{scorer}/m
end

Then(/^player (\d+) scores$/) do |arg1|
  visit '/score'
  click_button(/anota#{arg1}/)
end

Then(/^I should see link "([^"]*)"$/) do |text|
  click_link(text)
end
