Feature: open file

    As a user
    So I can work on my project
    I want to open a specific file

Scenario: open file

    Given I am inside a folder
    When I click on a file's "More about"
    Then I should be able to read the file

Scenario: attempt creating new file

    Given I am inside a folder
    When I click "Add new code"
    Then I should be able to create a new file

Scenario: return to folder view from file

    Given I am inside a file
    When I click "Back to fold list"
    Then I should see all folders
