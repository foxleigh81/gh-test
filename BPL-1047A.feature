Feature: User who has entered a valid code from Data Table Z Special  changes the variation
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1047A
        Jira: GS-185

    Background:
        Given the user has completed the PL-1047 steps

    @BPL-1047A-1
    Scenario: User who has entered a valid code from Data Table Z Special  is directed to 'Confirm Change Variation' page 
        And the user has been directed to the 'Confirm Change Variation' page
        When page 'Confirm Change Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing variation'
        And a page header 'Are you sure you want to change variation:'
        And they will see the '<Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And undefined

    @BPL-1047A-2
    Scenario: User selects 'Yes' option
        And the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they are directed to the 'Enter Variation Code' page

    @BPL-1047A-3
    Scenario: User selects 'No' option
        And the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they are directed to the 'Check Your Answers' page

    @BPL-1047A-4
    Scenario: User does not select an option
        And the user has been directed to the 'Confirm Change Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue