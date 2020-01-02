Feature: User who has entered a valid code from Data Table IA + IB and has selected variation type IA and a second variation code from Data Table Z Only and has selected variation type IA  is prompted to add another variation
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5153B
        Jira: GS-981

    Background:
        Given the user has completed the PL-5153 steps

    @FPL-5153B-1
    Scenario: User who has entered a valid code from Data Table IA + IB and has selected variation type IA and a second variation code from Data Table Z Only and has selected variation type IAis directed to the Add Another Variation page
        And the user has been directed to the 'Add Another Variation Code' page
        When page 'Add Another Variation Code' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Add another variation?'
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And undefined

    @FPL-5153B-2
    Scenario: User selects 'Yes'
        And the user has been directed to the 'Add Another Variation Code' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they are directed to the 'Enter Variation Code' page

    @FPL-5153B-3
    Scenario: User selects 'No'
        And the user has been directed to the 'Add Another Variation Code' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they are directed to the 'Supporting Documents' page

    @FPL-5153B-4
    Scenario: User does not select an option
        And the user has been directed to the  'Add Another Variation Code' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue