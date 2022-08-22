Feature: Login Functionality
  Scenario: to test the Login functionality of Website
    Given I am on the homepage
    When I click "Sign in"
    Then I should see the text "CREATE AN ACCOUNT"
    When I fill in "email" with "nikhilraut975@gmail.com"
    And I fill in "passwd" with "12345678"
    And I press "Sign in"
    Then I should see "Sign out"

