Feature: edit code

    As a user
    So I can work on my project
    I want to edit a file

Scenario: edit file

    Given I am looking at the file
    When I click "Edit code"
    Then I should be able to edit the code

Scenario: save file

    Given I am editing the file
    When I click "Save Changes"
    Then I should be able to see the saved changes