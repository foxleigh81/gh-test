Feature: User who has entered a valid code from Data Table Z Only and a second variation code from Data Table IA + IB is prompted to add another variation
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-4082B
        Jira: GS-353

    Background:
        Given the user has completed the PL-4082 steps

    @DPL-4082B-1
    Scenario: User who has entered a valid code from Data Table Z Only and a second variation  code from Data Table IA + IB is directed to the Add Another Variation page
        And the user has been directed to the 'Add Another Variation Code' page
        When page 'Add Another Variation Code' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Add another variation?'
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And undefined

    @DPL-4082B-2
    Scenario: User selects 'Yes'
        And the user has been directed to the 'Add Another Variation Code' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they are directed to the 'Enter Variation Code' page

    @DPL-4082B-3
    Scenario: User selects 'No'
        And the user has been directed to the 'Add Another Variation Code' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they are directed to the 'Supporting Documents' page

    @DPL-4082B-4
    Scenario: User does not select an option
        And the user has been directed to the  'Add Another Variation Code' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue