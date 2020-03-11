Feature: User enters application finance information
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8015C

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Workshare Several-Changes Multiple-Products Finance Details' page
        And a page header 'Finance details'

    @IPL-8015C-1
    Scenario: User completes all mandatory fields and clicks 'continue'
        And they enter the text '12345' into the 'purchase order' text input
        And they enter the text 'test@test.com' into the 'invoice email' text input
        When they click the 'Continue' button
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page

    @IPL-8015C-2
    Scenario: User completes all mandatory fields and clicks 'Save and exit'
        And they enter the text '12345' into the 'purchase order' text input
        And they enter the text 'test@test.com' into the 'invoice email' text input
        When they click the 'Save and exit' button
        And they are directed to the 'Marketing Authorisations Home' page

    @IPL-8015C-3
    Scenario: User does not enter any information and clicks 'continue'
        When they click the 'Continue' button
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Finance-Details' page
        And the 'invoice email' text input will error with message 'Enter a valid email address'

    @IPL-8015C-4
    Scenario: User enters an invalid email
        And they enter the text '12345' into the 'purchase order' text input
        And they enter the text 'test' into the 'invoice email' text input
        When they click the 'Continue' button
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Finance-Details' page
        And the 'invoice email' text input will error with message 'Enter a valid email address'