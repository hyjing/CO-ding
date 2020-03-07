Feature: create new file

    As a user
    So I can work on a new file
    I want to make a new file

Scenario: create new file
    Given "Test" project folder exists
        And I am on the create new file page in "Test" folder
        And I enter "main.java" in Name
        And I enter "test" in Author
        And the Creation Date is set to today
    When I click "Save Changes"
    Then I should see file "main.java" in folder "Test"