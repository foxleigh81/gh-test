Feature: User enters application contact information
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0012B
        Jira: GS-11

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Single One-Product Application Contact Details' page
        And a page header 'Enter application contact details'

    @APL-0012B-1
    Scenario: User completes all mandatory fields
        And they enter the text 'John Doe' into the 'contact fullname' text input
        And they enter the text '0123456789' into the 'contact telephone' text input
        And they enter the text 'test@test.com' into the 'contact email' text input
        When they click the 'Continue' button
        And they are directed to the 'Variation Single One-Product Finance Details' page

    @APL-0012B-2
    Scenario: User does not complete all mandatory fields
        When they click the 'Continue' button
        And they are directed to the 'Variation Single One-Product Application Contact Details' page
        And the 'contact fullname' text input will error with message 'Please enter a Full name'
        And the 'contact telephone' text input will error with message 'Please enter a valid telephone number'
        And the 'contact email' text input will error with message 'Enter a valid email address'

    @APL-0012B-3
    Scenario: User enters an invalid email format
        And they enter the text 'John Doe' into the 'contact fullname' text input
        And they enter the text '0123456789' into the 'contact telephone' text input
        And they enter the text 'test' into the 'contact email' text input
        When they click the 'Continue' button
        And they are directed to the 'Variation Single One-Product Application Contact Details' page
        And the 'contact email' text input will error with message 'Enter a valid email address'