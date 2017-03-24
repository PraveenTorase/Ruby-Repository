#Adopting two puppies
require 'watir-webdriver'
Given(/^I logged in to puppy web page$/) do
  @browser.goto "http://puppies.herokuapp.com"
end
And(/^I click on the First View Details button$/) do
  sleep 5
  @browser.button(:value => "View Details").click
end
And(/^I click on the adopt me button$/) do
  sleep 5
  @browser.button(:value =>"Adopt Me!").click
end

And(/^I click on the Adopt Another puppy$/) do
  sleep 5
  @browser.button(:value =>"Adopt Another Puppy").click
end
And(/^I click on the Second View Details$/) do
  sleep 5
  @browser.button(:value => "View Details", :index => 1).click
end
And(/^I click complete the adoption button$/) do
  sleep 5
  @browser.button(:value => "Complete the Adoption").click
end

And(/^I enter a name as "([^"]*)"$/) do |name|
  sleep 5
  @browser.text_field(:id =>"order_name").set(name)
end
And(/^I enter the address as "([^"]*)"$/) do |address|
  sleep 5
  @browser.text_field(:id =>"order_address").set(address)
end
And(/^I enter a valid email address as "([^"]*)"$/) do |email|
  sleep 5
  @browser.text_field(:id =>"order_email").set(email)
end
And(/^I select from pay with drop\-down as "([^"]*)"$/) do |payment_type|
  sleep 5
  @browser.select_list(:id =>"order_pay_type").select(payment_type)
end
When(/^I place an order$/) do
  sleep 5
  @browser.button(:value => "Place Order").click
end
Then(/^order is confirmed"([^"]*)"$/) do |arg1|
  @browser.p(:id => "notice").text.match "Thank you for adopting a puppy!"
end