Feature: delete file
    
    As a user
    So I clean up my project
    I want to delete a file

Scenario: attempting to delete file

    Given I am in a project folder
    When I click "Delete File"
    Then I should see a Confimration Window

Scenario: confirm deletion

    Given I am trying to delete a file
        And a Confirmation Window pops up
    When I click "Delete"
    Then I should not see the deleted file in the project folder

Scenario: cancel deletion

    Given I am trying to delete a file
        And a Confirmation Window pops up
    When I click "Cancel"
    Then I should see the deleted file in the project folder
