Feature: delete folder

    As a user
    So I can delete unwanted files
    I want to delte a file

Scenario: delete file

    Given "Test" project folder exists
        And file "main.java" exists
        And I am seeing details about "main.java"
    When I click "Delete"
    Then I should not see file "main.java" in the "Test" folder