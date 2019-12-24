Feature: User who has entered a valid code from Data Table IA Only enters application finance information
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2012C
        Jira: GS-198

    Background:
        Given the user has completed the PL-2012B steps

    @CPL-2012C-1
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

    @CPL-2012C-2
    Scenario: User completes all mandatory fields
        And the user has been directed to the 'Application Finance Details' page
        And there is a non-empty string in all mandatory fields
        When they select 'Continue'
        Then they are directed to the 'Check Your Answers' page

    @CPL-2012C-3
    Scenario: User does not complete all mandatory fields
        And the user has been directed to the 'Application Finance Details' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'Enter email address to continue'
        And they will not be able to continue