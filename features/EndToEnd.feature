@javascript
Feature: End to End Testing
  Background:
    Given I am on the homepage
    When I click "Women"
    When I click on "Printed Chiffon Dress"
    And I fill in "quantity_wanted" with "2"
    And select "M" from "group_1"
    And I click "Green"
    And I press "Submit"
    Then I should see the text "Product successfully added to your shopping cart"

  Scenario: to verify cart product details and cost
    When I click "Proceed to checkout"
    Then I should see the text "SHOPPING-CART SUMMARY"
    Then I should see the text "Printed Chiffon Dress"
    And I verify cart details for the product "Printed Chiffon Dress"
      | Quantity    |Size         |Color               |
      | 2           |M	          |Green               |
    When I click "Women"
    When I click on "Faded Short Sleeve T-shirts"
    And I press "Submit"
    Then I should see the text "Product successfully added to your shopping cart"
    When I click "Proceed to checkout"
    Then I should see the text "SHOPPING-CART SUMMARY"
    Then I should see the text "Faded Short Sleeve T-shirts"
    And I verify total cost
    Then I edit quantity as "4" for product "Faded Short Sleeve T-shirts"
    And I wait "5" seconds
    And I verify total cost
    When I delete product "Faded Short Sleeve T-shirts"
    And I wait "5" seconds
    Then I should not see the text "Faded Short Sleeve T-shirts"