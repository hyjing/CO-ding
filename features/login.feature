Feature: user login

  As an user
  So that I can access my projects
  I want to log in to Dashboard

Scenario: user has correct credentials
  
  Given I'm on login page
  When I log in with correct credentials
    And press the "Login" button
  Then I should see the Dashboard

Scenario: user has invalid credentials
  
  Given I'm on login page
  When I log in with incorrect credentials
    And press the "Login" button
  Then I should see "Incorrect Credentials"