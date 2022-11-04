Feature: Card
    In order to manage my cards
    As user
    I want create/delete cards

    Scenario: Add card
        Given I am on create card page
        When I fill the form
        And click on "Create Card"
        Then I should see my card in the page