Feature: User who has entered a valid  code from Data Table Z Only and has selected variation type IB or II, and a second variation  code from Data Table IB Only, or II Only, or No Variations, or Z Special enters application finance information
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5293A

    Background:
        Given the user has completed the PL-5293 steps

    @FPL-5293A-1
    Scenario: User is directed to the 'Application Finance Details' page
        And the user has been directed to the 'Application Finance Details' page
        When page 'Application Finance Details' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        Then a page header 'Finance details'
        And the user will see the 'Purchase order number (optional)' text input box
        And they will see Text 'This number will appear on your invoice'
        And they will see the mandatory 'Email address for invoices' text input box
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @FPL-5293A-2
    Scenario: User completes all mandatory fields
        And the user has been directed to the 'Application Finance Details' page
        And there is a non-empty string in all mandatory fields
        When they select 'Continue'
        Then they are directed to the 'Check Your Answers' page

    @FPL-5293A-3
    Scenario: User does not complete all mandatory fields
        And the user has been directed to the 'Application Finance Details' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'Enter email address to continue'
        And they will not be able to continue