Feature: delete folder

    As a user
    So I can delete unwanted projects
    I want to delte a folder

Scenario: delete folder

    Given I am in the file view
    When I click delete fold
    Then I should not see the folder anymore