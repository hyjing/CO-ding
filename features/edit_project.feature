Feature: edit project settings
    
    As a user
    So that I can edit project details
    I want to access and edit project settings

Scenario: edit project name
  
    Given I am logged into the Dashboard
        And "test" project folder exists
    When I click "Edit" for "test" project
        And I enter "test1"
        And I save the changes
    Then I should not see a "test" folder
        And I should see a "test1" folder

Scenario: edit project name to existing project name

    Given I am logged into the Dashboard
        And "test" project folder exists
        And "test1" project folder exists
    When I click "Edit" for "test" project
        And I enter "test1"
        And I try to save the changes
    Then I should see "Project with Name 'test1' already exists"

Scenario: delete project

    Given I am logged into the Dashboard
        And "test" project folder exists
    When I click "Edit" for "test" project
        And I enter click "Delete"
    Then I should see a Confirmation Window

Scenario: confirm project deletion
    
    Given I try to delete a project
        And I see a Confimration Window
    When I click "Delete"
    Then I should not see the "test" folder"

Scenario: cancel project deletion
    
    Given I try to delete a project
        And I see a Confimration Window
    When I click "Cancel"
    Then I should be back to the project edit page
