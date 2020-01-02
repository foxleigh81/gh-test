Feature: User who has entered a valid code from Data Table IB Only, II Only, No Variations, or Z Special and a second from Data Table Z Only choses the variation type
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5095
        Jira: GS-811

    Background:
        Given the user has completed the PL-5063 steps

    @FPL-5095-1
    Scenario: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only is directed to the 'Variation Type 1' page
        And the user has been directed to the 'Variation Type 1' page
        When page 'Variation Type 1' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a mrketing authorisation'
        And a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And they will see a 'Continue' option

    @FPL-5095-2
    Scenario: User selects variation type IA
        And the user has been directed to the 'Variation Type 1' page
        And the user has selected 'IA'
        When they select 'Continue'
        Then they are directed to the 'Implementation Date' page

    @FPL-5095-3
    Scenario: User selects variation type IB
        And the user has been directed to the 'Variation Type 1' page
        And the user has selected 'IB'
        When they select 'Continue'
        Then they are directed to the 'Article 5' page

    @FPL-5095-4
    Scenario: User selects variation type II
        And the user has been directed to the 'Variation Type 1' page
        And the user has selected 'II'
        When they select 'Continue'
        Then they are directed to the 'Article 5' page

    @FPL-5095-5
    Scenario: User does not select a variation type
        And the user has been directed to the 'Variation Type 1' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select a variation type'
        And they will not be able to continue