Feature: open project folder

    As a user
    So I can work on my project
    I want to open the project folder

Scenario: open project folder

    Given I am in the folder view
        And "Test" project folder exists
    When I click on the "Test" project folder
    Then I should be in the "Test" project folder

Scenario: attempt creating new folder

    Given I am in the folder view
    When I click "Add new fold"
    Then I should be able taken to the creation of a new project folder

Scenario: return to folder view from folder

    Given "Test" project folder exists
        And I am in "Test" folder
    When I click "Back to fold list"
    Then I should see all folders