Feature: delete folder

    As a user
    So I can delete unwanted files
    I want to delte a file

Scenario: delete file

    Given I am inside a file
    When I click "Delete"
    Then I should not see the file anymore