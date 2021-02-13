#Author: your.email@your.domain.com
#Keywords Summary :
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
Feature: Title of your feature
  I want to use this template for my feature file

  @tag1
  Scenario Outline: User want to reserve a hotel
    Given User navigate to Tiket Page
    When User fill choose <tujuan> 
    And User choose <startdate>
    And User choose <enddate>
    And User choose amount of <guest>
    And	User choose amount of <room>
    Then I verify the result page 
    And User choose hotel from result page
    Then User directed to detail hotel page
    And User choose available room hotel
    Then User fill detail order form
    And User will directed to payment page
    Then User choose payment method
    And click lanjutkan
    Then After payment success User can see the detail of order
    
    
    Example:
    |tujuan	| stardate					| enddate						|	guest	|	room	|
    |bali		| 27-februari-2021 	| 28-februari-2021  | 6			|	5			|  

 