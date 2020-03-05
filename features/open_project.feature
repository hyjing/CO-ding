Feature: open project

    As an user
    So that I can access a specific projet I'm working on
    I want to open project folder

Scenario: open project folder
    
    Given I'm on logged into the Dashboard
        And "test" project exists
    When I click on the "test" project
    Then I should see all files in the "test" project