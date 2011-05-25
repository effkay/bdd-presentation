Feature: Beta Signup Page
  In order to sign up for the beta
  As a User
  I want to read some information about the product
  And I want to be able to sign up for the beta

  Scenario: Visiting the Homepage
    Given I am a User
    And I am on the root page
    Then I should see "The super duper product"
    And I should see a the beta sign up form

  Scenario: Submitting the sign up form with valid data
    Given I am a User
    And I am on the root page
    When I fill in the following:
      | First Name | John |
      | Last Name | Doe |
      | E-Mail | john.doe@something.com |
    And I press "Submit"
    Then my information should be saved
    And I should see "Thank you for signing up!"

