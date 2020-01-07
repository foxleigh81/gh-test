Feature: User who has entered a valid  code from Data Table Z Only and has selected variation type IB or II, and a second variation code from Data Table IA + IB choses the variation type
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5296
        Jira: GS-1369

    Background:
        Given the user has completed the PL-5280 steps

    @FPL-5296-1
    Scenario: User who has entered a valid  code from Data Table Z Only and has selected variation type IB or II, and a second variation code from Data Table IA + IB is directed to the select variation type page
        And the user has been directed to the 'Variation Type 2' page
        When page 'Variation Type 2' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Select a variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And undefined

    @FPL-5296-2
    Scenario: User selects variation type IA
        And the user has been directed to the 'Variation Type Page 2' page
        And the user has selected 'IA'
        When they select 'Continue'
        Then they are directed to the 'Implementation Date' page

    @FPL-5296-3
    Scenario: User selects variation type IB
        And the user has been directed to the 'Variation Type Page 2' page
        And the user has selected 'IB'
        When they select 'Continue'
        Then they are directed to the 'Describe Changes' page

    @FPL-5296-4
    Scenario: User does not select a variation type
        And the user has been directed to the 'Variation Type Page 2' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select a variation type'
        And they will not be able to continue