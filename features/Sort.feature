@javascript
Feature: Sort Functionality
  Scenario: to test the Sort by A to Z
    Given I am on the homepage
    When I click "Women"
    When select "Product Name: A to Z" from "selectProductSort"
    Then I should see Product by A to Z sorting order

  Scenario: to test the Sort by Z to A
    When select "Product Name: Z to A" from "selectProductSort"
    Then I should see Product by Z to A sorting order

  Scenario: to test the Sort by Lowest Price First
    When select "Price: Lowest first" from "selectProductSort"
    Then I should see Product by Lowest first sorting order

  Scenario: to test the Sort by Highest Price First
    When select "Price: Highest first" from "selectProductSort"
    Then I should see Product by Highest first sorting order