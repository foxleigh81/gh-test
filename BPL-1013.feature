Feature: User agrees and submits the application
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1013
        Jira: GS-108

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Single Multiple-Products Declaration' page
        And a page header 'Declaration'

    @BPL-1013-1
    Scenario: User selects 'Agree and submit'
        When they click the 'Agree and Submit' button
        Then they are directed to the 'Application Submitted' page