Feature: User who has entered a valid code from Data Table IA + IB and a second variation code from Data Table IA + IB is prompted to add another variation
    Description:
        Reference: DPL-4051B

    Background: Given the user has completed the PL-4051 steps

    @DPL-4051B
    Scenario: User who has entered a valid code from Data Table IA + IB and a second variation  code from Data Table IA + IB is directed to the Add Another Variation page
        Given the user has been directed to the 'Add Another Variation Code' page
        When page 'Add Another Variation Code' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Add another variation?'
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option

    @DPL-4051B-1
    Scenario: User selects 'Yes'
        Given the user has been directed to the 'Add Another Variation Code' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @DPL-4051B-2
    Scenario: User selects 'No'
        Given the user has been directed to the 'Add Another Variation Code' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Supporting Documents' page

    @DPL-4051B-3
    Scenario: User does not select an option
        Given the user has been directed to the  'Add Another Variation Code' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue