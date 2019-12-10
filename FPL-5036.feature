Feature: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only choses the variation type
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5036

    Background: Given the user has completed the GS-516 steps

    @FPL-5036
    Scenario: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only is directed to the 'Variation Type 1' page
        Given the user has been directed to the 'Variation Type 1' page
        When page 'Variation Type 1' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a mrketing authorisation'
        And a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And they will see a 'Continue' option

    @FPL-5036-1
    Scenario: User selects variation type IA
        Given the user has been directed to the 'Variation Type 1' page
        And the user has selected 'IA'
        When they select 'Continue'
        Then they will be directed to the 'Implementation Date' page

    @FPL-5036-2
    Scenario: User selects variation type IB
        Given the user has been directed to the 'Variation Type 1' page
        And the user has selected 'IB'
        When they select 'Continue'
        Then they will be directed to the 'Article 5' page

    @FPL-5036-3
    Scenario: User selects variation type II
        Given the user has been directed to the 'Variation Type 1' page
        And the user has selected 'II'
        When they select 'Continue'
        Then they will be directed to the 'Article 5' page

    @FPL-5036-4
    Scenario: User does not select a variation type
        Given the user has been directed to the 'Variation Type 1' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select a variation type'
        And they will not be able to continue