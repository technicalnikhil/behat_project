@javascript
Feature: Contact Us Functionality
  Scenario: to test the customer service functionality of Website
    Given I am on the homepage
    When I click "Contact us"
    Then I should see the text "CUSTOMER SERVICE - CONTACT US"
    When select "2" from "id_contact"
    When I fill in "email" with "nikhilraut975@gmail.com"
    When I fill in "id_order" with "366874687"
   # When attach the file "test.png" to "fileUpload"
    When I fill in "message" with "hi how are you"
    When I press "submitMessage"
    Then I should see the text "Your message has been successfully sent to our team."