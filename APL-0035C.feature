Feature: User who has entered a valid code from Data Table Z Only, and has selected IB variation type, enters application contact information
    Description:
        Reference: APL-0035C

    Background: Given the user has completed the PL-0035B steps

    @APL-0035C
    Scenario: User is directed to the 'Application Contact Information' page
        Given the user has been directed to the 'Application Contact Information' page
        When page 'Application Contact Information' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Application contact information'
        And the user will see the 'Application contact name' text input box
        And they will see Text 'The person that the VMD will liase with during the application process'
        And the user will see the 'Application contact email' text input box
        And the user will see the 'Application contact number' text input box
        And the user will see the 'Purchase order number (optional)' text input box
        And they will see Text 'This number will appear on your invoice'
        And the user will see the 'Invoice email address' text input box
        And the user will see the 'Further comments (optional)' text area
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @APL-0035C-1
    Scenario: User completes all mandatory fields
        Given the user has been directed to the 'Application Contact Information' page
        And there is a non-empty string in all mandatory fields
        When they select 'Continue'
        Then they will be directed to the 'Check Your Answers' page

    @APL-0035C-2
    Scenario: User does not complete all mandatory fields
        Given the user has been directed to the 'Application Contact Information' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'Complete all mandatory fields to continue'
        And they will not be able to continue