Feature: User who has entered a valid code from Data Table IA + IB and has selected variation type IA adds another variation
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5117
        Jira: GS-873

    Background:
        Given the user has completed the PL-5116 steps

    @FPL-5117-1
    Scenario: User who has entered a valid code from Data Table IA Only is directed to Enter Second Variation Code page
        And the user has been directed to the 'Enter Second Variation Code' page
        When page 'Enter Second Variation Code' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Choose a second variation'
        And a sub header 'Enter variation code or name'
        And a sub header 'Select a common variation'
        And the user can see a text input box
        And they will see 5 radio button option(s)
        And they will see a 'Continue' option

    @FPL-5117-2
    Scenario: User enters a valid code from Data Table IA Only
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from MISSING VALUE
        When they select 'Data Table IA Only'
        Then they are directed to the 'Continue' page

    @FPL-5117-3
    Scenario: User enters a valid code from Data Table IB Only, or II Only, or No Variations, or Z Special
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from MISSING VALUE
        When they select '<Group>'
        Then they are directed to the 'Continue' page

    @FPL-5117-4
    Scenario: User enters a valid code from Data Table IA + IB
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from MISSING VALUE
        When they select 'Data Table IA + IB'
        Then they are directed to the 'Continue' page

    @FPL-5117-5
    Scenario: User enters a valid code from Data Table Z Only
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from MISSING VALUE
        When they select 'Data Table Z Only'
        Then they are directed to the 'Continue' page

    @FPL-5117-6
    Scenario: User does not enter a valid code or select a radio button option
        And the user has been directed to the 'Enter Second Variation Code' page
        And they have not entered a valid 'Code'
        And they have not selected any 'radio button'
        When they select 'Continue'
        Then they will see an error message containing 'Enter a second variation code to continue'
        And they will not be able to continue