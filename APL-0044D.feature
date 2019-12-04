Feature: User who has entered a valid code from Data Table  'No Variations' enters application finance information
    Description:
        Reference: APL-0044D

    Background: Given the user has completed the GS-74 steps

    @APL-0044D
    Scenario: User is directed to the 'Application Finance Details' page
        Given the user has been directed to the 'Application Finance Details' page
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

    @APL-0044D-1
    Scenario: User completes all mandatory fields
        Given the user has been directed to the 'Application Finance Details' page
        And there is a non-empty string in all mandatory fields
        When they select 'Continue'
        Then they will be directed to the 'Check Your Answers' page

    @APL-0044D-2
    Scenario: User does not complete all mandatory fields
        Given the user has been directed to the 'Application Finance Details' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'Enter email address to continue'
        And they will not be able to continue