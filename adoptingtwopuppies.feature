Feature: Adopting two puppies
  Scenario: Adopting two puppies
    Given I logged in to puppy web page
    And I click on the First View Details button
    And I click on the adopt me button
    And I click on the Adopt Another puppy
    And I click on the Second View Details
    And I click on the adopt me button
    And I click complete the adoption button
    And I enter a name as "Praveen"
    And I enter the address as "J.P.Nagar 7th Phase"
    And I enter a valid email address as "praven.torase@intimetec.com"
    And I select from pay with drop-down as "Credit card"
    When I place an order
    Then order is confirmed