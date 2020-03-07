Feature: edit code

    As a user
    So I can work on my project
    I want to edit a file

Scenario: edit file

    Given "Test" project folder exists
        And file "main.java" exists
    When I click "Edit code"
    Then I should be able taken to the editor

Scenario: save file

    Given "Test" project folder exists
        And file "main.java" exists
        And I write "Hello World" into file "main.java"
    When I click "Save Changes"
    Then I should see "Hello World" in file "main.java"