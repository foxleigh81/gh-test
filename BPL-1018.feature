Feature: User who has entered a valid code from Data Table IA + IB selects the variation type
    Description:
        Reference: BPL-1018

    Background: Given the user has completed the PL-1007 steps

    @BPL-1018
    Scenario: User who has entered a valid code from Data Table IA + IB is directed to the 'Variation Type Page 2' page 
        Given the user has been directed to the 'Variation Type Page 2' page
        When page 'Variation Type Page 2' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a 'Continue' option

    @BPL-1018-1
    Scenario: User selects variation type IA
        Given the user has been directed to the 'Variation Type Page 2' page
        And the user has selected 'IA'
        When they select 'Continue'
        Then they will be directed to the 'Implementation Date' page

    @BPL-1018-2
    Scenario: User selects variation type IB
        Given the user has been directed to the 'Variation Type Page 2' page
        And the user has selected 'IB'
        When they select 'Continue'
        Then they will be directed to the 'Describe Changes' page

    @BPL-1018-3
    Scenario: User does not select a variation type
        Given the user has been directed to the 'Variation Type Page 2' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select a variation type'
        And they will not be able to continue