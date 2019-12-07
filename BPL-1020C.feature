Feature: User who has entered a valid code from Data Table IA + IB and has selected IA variation enters application contact information
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1020C
        Jira: GS-129

    Background: Given the user has completed the GS-128 steps

    @BPL-1020C
    Scenario: User is directed to the 'Application Contact Details' page
        Given the user has been directed to the 'Application Contact Details' page
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

    @BPL-1020C-1
    Scenario: User completes all mandatory fields
        Given the user has been directed to the 'Application Contact Details' page
        And there is a non-empty string in all mandatory fields
        When they select 'Continue'
        Then they will be directed to the 'Application Finance Details' page

    @BPL-1020C-2
    Scenario: User does not complete all mandatory fields
        Given the user has been directed to the 'Application Contact Details' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'Complete all mandatory fields to continue'
        And they will not be able to continue