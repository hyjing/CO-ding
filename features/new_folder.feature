Feature: create new folder

    As a user
    So I can work on multiple projects
    I want to make a new folder

Scenario: create new folder
    Given I am on the create new folder page
        And I enter "project1" in Fold_Name
        And I enter "test" in Fold_Author
        And the Creation Date is set to today
    When I click "Save Changes"
    Then the new folder should appear