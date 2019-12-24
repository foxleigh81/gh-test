Feature: User enters a variation code
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1007
        Jira: GS-98

    Background:
        Given the user has completed the PL-1005 steps

    @BPL-1007-1
    Scenario: User directed to Enter Variation Code
        And the user has been directed to the 'Enter Variation Code' page
        When page 'Enter Variation Code' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Choose a variation'
        And a sub header 'Enter variation code or name'
        And a sub header 'Select a common variation'
        And the user can see a text input box
        And they will see 5 radio button option(s)
        And they will see a 'Continue' option

    @BPL-1007-2
    Scenario: User enters a valid code from Data Table IA Only
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table IA Only'
        When they select 'Continue'
        Then they are directed to the 'Implementation Date' page

    @BPL-1007-3
    Scenario: User enters a valid code from Data Table IB Only
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table IB Only'
        When they select 'Continue'
        Then they are directed to the 'Describe Changes' page

    @BPL-1007-4
    Scenario: User enters a valid code from Data Table II Only
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table II Only'
        When they select 'Continue'
        Then they are directed to the 'Describe Changes' page

    @BPL-1007-5
    Scenario: User enters a valid code from Data Table IA + IB
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table IA + IB'
        When they select 'Continue'
        Then they are directed to the 'Variation Type Page 2' page

    @BPL-1007-6
    Scenario: User enters a valid code from Data Table Z Only
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table Z Only'
        When they select 'Continue'
        Then they are directed to the 'Variation Type Page 1' page

    @BPL-1007-7
    Scenario: User enters a valid code from Data table No Variations
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table No Variations'
        When they select 'Continue'
        Then they are directed to the 'Describe Changes' page

    @BPL-1007-8
    Scenario: User enters a code from Data Table Z Special
        And the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table Z Special'
        When they select 'Continue'
        Then they are directed to the 'Describe Changes' page

    @BPL-1007-9
    Scenario: User selects a common variation
        And the user has been directed to the 'Enter Variation Code' page
        And they will see 5 radio button option(s)
        And they have selected '<Sub Code>' from 'Data Table Common Variations'
        When they select 'Continue'
        Then they are directed to the '<Page>' page

    @BPL-1007-10
    Scenario: User does not enter a valid code or select a radio button option
        And the user has been directed to the 'Enter Variation Code' page
        And they have not entered a valid 'Code'
        And they have not selected any 'radio button'
        When they select 'Continue'
        Then they will see an error message containing 'Enter variation code to continue'
        And they will not be able to continue