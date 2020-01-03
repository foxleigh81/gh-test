Feature: User selects the variation type
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0018
        Jira: GS-32

    Background:
        Given the user has completed the PL-0007 steps

    @APL-0018-1
    Scenario: User who has entered a valid code from Data Table IA + IB is directed to the 'Variation Type Page 2' page 
        And the user has been directed to the 'Variation Type Page 2' page
        When page 'Variation Type Page 2' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And undefined

    @APL-0018-2
    Scenario: User selects variation type IA
        And the user has been directed to the 'Variation Type Page 2' page
        And the user has selected 'IA'
        When they select 'Continue'
        Then they are directed to the 'Implementation Date' page

    @APL-0018-3
    Scenario: User selects variation type IB
        And the user has been directed to the 'Variation Type Page 2' page
        And the user has selected 'IB'
        When they select 'Continue'
        Then they are directed to the 'Describe Changes' page

    @APL-0018-4
    Scenario: User does not select a variation type
        And the user has been directed to the 'Variation Type Page 2' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select a variation type'
        And they will not be able to continue