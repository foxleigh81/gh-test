Feature: User agrees and submits the application
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0013
        Jira: GS-16

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Single One-Product Declaration' page
        And a page header 'Declaration'

    @APL-0013-1
    Scenario: User selects 'Agree and submit'
        When they click the 'Agree and Submit' button
        Then they are directed to the 'Application Submitted' page