Feature: Group
    In order to manage my groups
    As user
    I want create/delete groups

    Scenario: Add group
        When I am on create group page
        And fill the Group form
        And click on "Create Group"
        Then I should see my group in the page
    
    Scenario: Update group
        Given I am on an edit group page
        When I change group description to "Group edited"
        When I click on "Update Group"
        Then I should see new group name

    Scenario: Filter cards by group
        Given I should see "group 1" on card page
        Given I should see "group 2" on card page
        When I click on "group 1"
        Then I should not see card from "group 2"

    Scenario: Go to new group page
        Given I shoud see "New Group" on card page
        When I click on "New Group" link
        Then I shoud see the "Create Group" button

    Scenario: Group form styles
        Given I am on group form page
        Then I should see one form with form id
