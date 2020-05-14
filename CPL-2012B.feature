Feature: User enters application contact information
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2012B
        Jira: GS-197

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they navigate to the 'Variation Type IA One-Change Multiple-Products Application-Contact-Details' page
        And a page header 'Enter application contact details'

    @CPL-2012B-1
    Scenario: User completes all mandatory fields
        And they enter the text 'John Doe' into the 'contact fullname' text input
        And they enter the text '0123456789' into the 'contact telephone' text input
        And they enter the text 'test@test.com' into the 'contact email' text input
        When they click the 'Continue' button
        And they will be directed to the 'Variation Type IA One-Change Multiple-Products Finance-Details' page

    @CPL-2012B-2
    Scenario: User does not complete all mandatory fields
        When they click the 'Continue' button
        And they will be directed to the 'Variation Type IA One-Change Multiple-Products Application-Contact-Details' page
        And the 'contact fullname' text input will error with message 'Please enter a Full name'
        And the 'contact telephone' text input will error with message 'Please enter a valid telephone number'
        And the 'contact email' text input will error with message 'Enter a valid email address'

    @CPL-2012B-3
    Scenario: User enters an invalid email format
        And they enter the text 'John Doe' into the 'contact fullname' text input
        And they enter the text '0123456789' into the 'contact telephone' text input
        And they enter the text 'test' into the 'contact email' text input
        When they click the 'Continue' button
        And they will be directed to the 'Variation Type IA One-Change Multiple-Products Application-Contact-Details' page
        And the 'contact email' text input will error with message 'Enter a valid email address'