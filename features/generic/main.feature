# features/main.feature
Feature: main
  In order to see the directory structure
  As a UNIX user
  I need to be able to list the current directory's contents

  @api
  Scenario: Create users
    Given users:
      | name     | mail            | status |
      | Joe User | joe@example.com | 1      |
    And I am logged in as a user with the "administrator" role
    When I visit "admin/people"
    Then I should see the link "Joe User"

  @api
  Scenario: Test user login
    Given users:
      | name     | mail            | status |
      | Joe User | joe@example.com | 1      |
    And I am logged in as "Joe User"
    When I visit "user"
    Then I should see "Joe User"

  @api
  Scenario: Conditional display of textfield
    Given I am logged in as a user with the "administrator" role
    And I am on "/node/add/page"
    And I select the radio button "Show foo"
    Then I should not see a "Bar" textfield form element
