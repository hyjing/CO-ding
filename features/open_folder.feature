Feature: open project folder

    As a user
    So I can work on my project
    I want to open the project folder

Scenario: open project folder

    Given I am in the folder view
    When I click on a project folder
    Then I should be in the project folder

Scenario: attempt creating new folder

    Given I am in the folder view
    When I click "Add new fold"
    Then I should be able to create new project folder

Scenario: return to folder view from folder

    Given I am inside a folder
    When I click "Back to fold list"
    Then I should see all folders