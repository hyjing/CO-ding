Feature: create new project folder
    
    As a user
    So that I can work on a new project
    I want to create a new project

Scenario: create new project with new name
  
    Given I am logged into the Dashboard
    When I click "New"
        And I enter Project Name "test"
        And I click "Create New Project"
    Then I should see a new "test" project folder

Scenario: create new project with existing name
    
    Given I am logged into the Dashboard
        And "test" project folder exists
    When I click "New"
        And I enter Project Name "test"
        And I click "Create New Project"
    Then I should see "Project with Name 'test' already exists"