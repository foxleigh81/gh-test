Feature: User who has enterered a valid code from Data Table Z Only enters application contact information
    Description:
        Reference: CPL-2015E
    
    Background: Given the user has completed the PL-2015D steps

    @CPL-2015E
    Scenario: User is directed to the 'Application Contact Information' page
        Given the user has been directed to the 'Application Contact Information' page
        When page 'Application Contact Information' loads
        Then they will see a 'Back' link
        And they will see a 'Sign out' link
        And they will see a sub header 'Vary a marketing authorisation'
        And they will see a page header 'Application contact information'
        And the user will see the 'Application contact name' text input box
        And they will see Text 'The person that the VMD will liase with during the application process'
        And the user will see the 'Application contact email' text input box
        And the user will see the 'Application contact number' text input box
        And the user will see the 'Purchase order number (optional)' text input box
        And they will see Text 'This number will appear on your invoice'
        And the user will see the 'Invoice email address' text input box
        And the user will see the 'Further comments' text area
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @CPL-2015E-1
    Scenario: User completes all mandatory fields
        Given the user has been directed to the 'Application Contact Information' page
        And there is a non-empty string in all mandatory fields
        When they select 'Continue'
        Then they will be directed to the 'Check Your Answers' page

    @CPL-2015E-2
    Scenario: User does not complete all mandatory fields
        Given the user has been directed to the 'Application Contact Information' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'Complete all mandatory fields to continue'
        And they will not be able to continue