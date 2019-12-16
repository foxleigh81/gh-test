Feature: User who has entered a valid code from Data Table IB Only, II Only, No Variations, or Z Special and a second  from Data Table IA + IB and has selected variation type IA is prompted to add another variation
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5082B

    Background: Given the user has completed the PL-5082 steps

    @FPL-5082B
    Scenario: User who has entered a valid code from Data Table IB Only, II Only, No Variations, or Z Special and a second  from Data Table IA + IB and has selected variation type IA is directed to the Add Another Variation page
        Given the user has been directed to the 'Add Another Variation Code' page
        When page 'Add Another Variation Code' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Add another variation?'
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option

    @FPL-5082B-1
    Scenario: User selects 'Yes'
        Given the user has been directed to the 'Add Another Variation Code' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @FPL-5082B-2
    Scenario: User selects 'No'
        Given the user has been directed to the 'Add Another Variation Code' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Supporting Documents' page

    @FPL-5082B-3
    Scenario: User does not select an option
        Given the user has been directed to the  'Add Another Variation Code' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue