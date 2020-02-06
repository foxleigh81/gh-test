Feature: User agrees and submits the application
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-1013
        Jira: GS-108

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Single One-Product Declaration' page
        And a page header 'Declaration'

    @APL-1013-1
    Scenario: User selects 'Agree and submit'
        When they click the 'Agree and Submit' button
        Then they are directed to the 'Application Submitted' page