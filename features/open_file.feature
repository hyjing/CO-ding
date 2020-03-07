Feature: open file

    As a user
    So I can work on my project
    I want to open a specific file

Scenario: open file

    Given "Test" folder exists
        And I am inside "Test" folder
        And File "File1.a" exists
    When I click on "More about" for "File1.a"
    Then I should be able to read "File1.a"

Scenario: attempt creating new file

    Given "Test" folder exists
    When I click "Add new code"
    Then I should be able to create a new file

Scenario: return to folder view from file

    Given "Test" folder exists
        And I am inside "Test" folder
        And File "File1.a" exists
    When I click "Back to fold list"
    Then I should see all folders
