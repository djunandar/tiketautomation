Feature: Login with facebook feature

  Scenario: As a user, I want to login to Tiket.com dashboard page and login with Facebook Account2
    Given I open the Tiket Homepage
    And I click on Login button
    When I click Masuk with Faebook
    And I Switch frame to facebook pop up
    Then I Sign in with Facebook
