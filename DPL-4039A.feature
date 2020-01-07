Feature: User who has entered a valid code from Data Table IA + IB removes the variation
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-4039A
        Jira: GS-292

    Background:
        Given the user has completed the PL-4039 steps

    @DPL-4039A-1
    Scenario: User who has entered a valid code from Data Table IA + IB is directed to the Confirm Remove Variation page
        And the user has been directed to the 'Confirm Remove Variation' page
        When page 'Confirm Remove Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Are you sure you want to remove variation:'
        And they will see the '<Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And undefined

    @DPL-4039A-2
    Scenario: User selects 'Yes'
        And the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they are directed to the 'Enter Variation Code' page

    @DPL-4039A-3
    Scenario: User selects 'No'
        And the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they are directed to the 'Application Summary' page

    @DPL-4039A-4
    Scenario: User does not select an option
        And the user has been directed to the 'Confirm Remove Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue