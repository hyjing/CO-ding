Feature: creating file

    As a user
    So that my project can have multiple files
    I want to create a new file 

Scenario: creating new file

    Given I am looking at a project folder
    When I click on "New"
        And enter file name
        And click "Create"
    Then I should see an empty text editor

Scenario: cancelling creating new file

    Given I am looking at a project folder
    When I click on "New"
        And enter file name
        And click "Cancel"
    Then I should see the unchanged project folder