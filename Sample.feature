Feature: Adopt a new puppy
 Scenario: Adopt a new puppy
  Given I logged in to puppy webpage
  And I click the View Details
  And I click the adopt me button
  And I click complete the adoption button
  And I enter a name as "Praveen"
  And I enter the address as "J.P.Nagar 7th Phase"
  And I enter a valid email address as "praveentorase@intimetec.com"
  And I select from pay with drop-down as "Credit card"
  When I place an order
  Then I should see "Thank you for adopting a puppy!"