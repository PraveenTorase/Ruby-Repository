#Scenario Outline script
require 'watir-webdriver'
Given(/^I logged in to puppy web page$/) do
  @browser.goto "http://puppies.herokuapp.com"
end

And(/^I click the View Details$/) do
  @browser.button(:value => "View Details").click
end

And(/^I click the adopt me button$/) do
   sleep 5
  @browser.button(:value => "Adopt Me!").click
end

And(/^I click complete the adoption button$/) do
   sleep 5
  @browser.button(:value =>"Complete the Adoption").click
end
  sleep 5
And(/^I enter a name as "([^"]*)"$/) do |name|
  @browser.text_field(:id =>"order_name").set(name)
end
 sleep 5
And(/^I enter the address as "([^"]*)"$/) do |order_address|
  @browser.text_field(:id =>"order_address").set(order_address)
end
 sleep 5
And(/^I enter a valid email address as "([^"]*)"$/) do |email|
  @browser.text_field(:id =>"order_email").set(email)
end
sleep 5
And(/^I select from pay with drop\-down as "([^"]*)"$/) do |payment_type|
  @browser.select_list(:id =>"order_pay_type").select(payment_type)
end
sleep 5
When(/^I place an order$/) do
  @browser.button(:value =>"Place Order").click
end