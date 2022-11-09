Feature: Card
    In order to manage my cards
    As user
    I want create/delete cards

    Scenario: Add card
        Given I am on create card page
        When I fill the form
        And click on "Create Card"
        Then I should see my card in the page

    Scenario: Destroy card
        Given I am on specific card page
        When I click on "Destroy this card"
        Then I should see confirmation of my card deletion

    Scenario: Update card
        Given I am on an edit card page
        When I change card name to "Card edited"
        When I click on "Update Card"
        Then I should see new card name

    Scenario: Update status of a card
        Given I am on cards page
        When I click to change to next status
        When I go to this card page
        Then I should see your next status

    Scenario: Filter cards by status
        Given I should see "To Do" status on card page
        Given I should see "Done" status on card page
        When I click on "Doing-Filter"
        Then I should not see card with "To Do" status
        Then I should not see card with "Done" status