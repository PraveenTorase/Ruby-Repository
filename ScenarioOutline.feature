+Feature: Adopt a new puppy
+  Scenario Outline: Adopt a new puppy
+    Given I logged in to puppy web page
+    And I click the View Details
+    And I click the adopt me button
+    And I click complete the adoption button
+    And I enter a name as "<name>"
+    And I enter the address as "<address>"
+    And I enter a valid email address as "<email_address>"
+    And I select from pay with drop-down as "<pay_type>"
+    When I place an order
+    Then I should see "Thank you for adopting a puppy!"
+
+    Examples:
+      |name   |address             |email_address                |pay_type       |
+      |Praveen|J.P.Nagar 7th Phase |praveen.torase@intimetec.com |Credit card    |
+      |Mahesh |BTM Layout          |mahesh.bonagle@intimetec.com |Check          |
+      |Nischal|J.P.Nagar 6th Phase |nischal.urs@intimetec.com    |Purchase order | 