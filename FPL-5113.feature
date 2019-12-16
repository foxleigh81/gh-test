Feature: User who has entered a valid code  from Data Table IA + IB choses the variation type
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5113

    Background: Given the user has completed the GS-511 steps

    @FPL-5113
    Scenario: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table IA + IB is directed to the select variation type page
        Given the user has been directed to the 'Variation Type 2' page
        When page 'Variation Type 2' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Select a variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a 'Continue' option

    @FPL-5113-1
    Scenario: User selects variation type IA
        Given the user has been directed to the 'Variation Type Page 2' page
        And the user has selected 'IA'
        When they select 'Continue'
        Then they will be directed to the 'Implementation Date' page

    @FPL-5113-2
    Scenario: User selects variation type IB
        Given the user has been directed to the 'Variation Type Page 2' page
        And the user has selected 'IB'
        When they select 'Continue'
        Then they will be directed to the 'Describe Changes' page

    @FPL-5113-3
    Scenario: User does not select a variation type
        Given the user has been directed to the 'Variation Type Page 2' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select a variation type'
        And they will not be able to continue