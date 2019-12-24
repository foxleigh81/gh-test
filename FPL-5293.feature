Feature: User who has entered a valid  code from Data Table Z Only and has selected variation type IB or II, and a second variation  code from Data Table IB Only, or II Only, or No Variations, or Z Special enters application contact information
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5293

    Background:
        Given the user has completed the PL-5292 steps

    @FPL-5293-1
    Scenario: User is directed to the 'Application Contact Details' page
        And the user has been directed to the 'Application Contact Details' page
        When page 'Application Contact Details' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Enter application contact details'
        And they will see the mandatory 'Full name' text input box
        And they will see Text 'The person that the VMD will liase with during the application process'
        And the user will see the 'Telephone' text input box
        And they will see the mandatory 'Email' text input box
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @FPL-5293-2
    Scenario: User completes all mandatory fields
        And the user has been directed to the 'Application Contact Details' page
        And there is a non-empty string in all mandatory fields
        When they select 'Continue'
        Then they are directed to the 'Application Finance Details' page

    @FPL-5293-3
    Scenario: User does not complete all mandatory fields
        And the user has been directed to the 'Application Contact Details' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'Complete all mandatory fields to continue'
        And they will not be able to continue