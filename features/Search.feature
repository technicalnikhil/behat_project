@javascript
Feature: Search Functionality
  Background:
    Given I am on the homepage
    When I click "Sign in"
    Then I should see the text "CREATE AN ACCOUNT"
    When I fill in "email" with "nikhilraut975@gmail.com"
    And I fill in "passwd" with "12345678"
    And I press "Sign in"
    Then I should see "Sign out"

  Scenario Outline: to test the search functionality of Website
    When I fill in "search_query_top" with "<product_name>"
    And I press "submit_search"
    Then I should see the text "<Result>"

    Examples:
    |product_name           |Result                                 |
    |t shirt                |Add to cart                            |
    |Printed dress          |Add to cart                            |
    |Iphone                 |No results were found gyjgj                 |