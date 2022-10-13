Feature: Card
    In order to manage my cards
    As user
    I want create/delete cards

    Scenario: Add card
        When I am on create card page
        And fill the form
        And click on "Create Card"
        Then I should see my card in the page

    Scenario: Show card
        When I am on card page
        And click on a card
        Then I should see my card info