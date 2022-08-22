Feature: Checkout Functionality
  Background:
    Given I am on the homepage
    When I click "Sign in"
    Then I should see the text "CREATE AN ACCOUNT"
    When I fill in "email" with "nikhilraut975@gmail.com"
    And I fill in "passwd" with "12345678"
    And I press "Sign in"
    Then I should see "Sign out"
    When I click "Women"
    When I click on "Printed Chiffon Dress"
    And I press "Submit"
    Then I should see the text "Product successfully added to your shopping cart"

  Scenario: to verify checkout functionality of website
    When I click "Proceed to checkout"
    Then I should see the text "SHOPPING-CART SUMMARY"
    Then I should see the text "Printed Chiffon Dress"
    Then I click on the button "Proceed to checkout"
    Then I should see the text "YOUR BILLING ADDRESS"
    Then I press "Proceed to checkout"
    Then I should see the text "Terms of service"
    Then I check the box "cgv"
    Then I press "Proceed to checkout"
    Then I should see the text "PLEASE CHOOSE YOUR PAYMENT METHOD"
    When I click "Pay by check."
    Then I should see the text "CHECK PAYMENT"
    Then I press "I confirm my order"
    Then I should see the text "Your order on My Store is complete."
