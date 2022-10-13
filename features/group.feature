Feature: Group
    In order to manage my groups
    As user
    I want create/delete groups

    Scenario: Add group
        When I am on create group page
        And fill the Group form
        And click on "Create Group"
        Then I should see my group in the page