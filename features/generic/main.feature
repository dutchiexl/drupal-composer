# features/main.feature
Feature: main
  In order to confirm the website basics are configured right
  As a visitor
  I see some basic things and be able to access the website

  Background:
    Given I am an anonymous user

  @api
  Scenario: Check the homepage
    When I am on the homepage
    Then I should get a "200" HTTP response
