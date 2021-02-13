#Author: djunandar@gmail.com
#Keywords Summary : Create Transaction with Product Hotel and Product Flight.
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Login with facebook feature
  Feature file to login with Facebook account story.

  @tag1
  Scenario: As a user, I want to login to Tiket.com dashboard page and login with Facebook Account
    Given I open the Tiket Homepage
    And I click on Login Button
    When I Masuk with Faebook
    Then I Sign in with Facebook
