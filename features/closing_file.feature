Feature: closing file

    As a user 
    So that I can work on other files
    I want to close the file

Scenario: closing file

    Given I am editing a file
    When I return to the project folder
    Then the file should be saved
        And I should be able to see all project files

