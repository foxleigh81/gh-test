Feature: User who has entered a valid code from Data Table IA Only enters application contact information
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0012B
        Jira: GS-11

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Select Variation Procedure Type' page
        And they navigate to the 'Variation Single One-Product Application Contact Details' page
        And a page header 'Enter application contact details'

    @APL-0012B-1
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

    @APL-0012B-2
    Scenario: User completes all mandatory fields
        And the user has been directed to the 'Application Contact Details' page
        And there is a non-empty string in all mandatory fields
        When they select 'Continue'
        Then they are directed to the 'Application Finance Details' page

    @APL-0012B-3
    Scenario: User does not complete all mandatory fields
        And the user has been directed to the 'Application Contact Details' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'Complete all mandatory fields to continue'
        And they will not be able to continue