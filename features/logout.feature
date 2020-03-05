Feature: logging out of portal

    As a user
    I want to move on with my life
    So I want to log out of the portal

Scenario: logging out

    Given I am logged in
    When I click "Log Out"
    Then all my changes should be saved
        And I should be on the Login page