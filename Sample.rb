require 'watir-webdriver'
Given(/^I logged in to puppy webpage$/) do

@browser.goto "http://puppies.herokuapp.com"
end
And(/^I click on the View Details$/) do
  @browser.button(:value => "View Details").click
end

And(/^I click on the adopt me button$/) do
  
  sleep 5
  @browser.button(:value =>"Adopt Me!").click
end

And(/^I click complete the adoption button$/) do
  sleep 5
  @browser.button(:value =>"Complete the Adoption").click
end

And(/^I enter a name as "([^"]*)"$/) do |test|
  sleep 5
  @browser.text_field(:id =>"order_name").set(test)
end

And(/^I enter the address as "([^"]*)"$/) do |arg1|
  @browser.text_field(:id =>"order_address").set(arg1)
end

And(/^I enter a valid email address as "([^"]*)"$/) do |email|
  @browser.text_field(:id =>"order_email").set(email)
end

And(/^I select from pay with drop-down as "([^"]*)"$/) do |pay_type|
  @browser.select_list(:id =>"order_pay_type").select(pay_type)
end

When(/^I place an order$/) do
  @browser.button(:value =>"Place Order").click
end

Then(/^the order is confirmed$/) do |arg1|
sleep 5
  if @browser.p(:id => "notice").text.match "Thank you for adopting a puppy!"
      puts "Thank you for adopting a puppy!"
  else
    puts "Sorry puppy not adopted"
  end
  end
end