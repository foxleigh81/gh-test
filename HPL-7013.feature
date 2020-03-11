Feature: User agrees and submits the application
    Description:
        Epic: Procedure H: Workshare 1 ch, sev un prds
        Reference: HPL-7013

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Declaration' page
        And a page header 'Declaration'

    @HPL-7013-1
    Scenario: User selects 'Agree and submit'
        When they click the 'Agree and Submit' button
        Then they are directed to the 'Application Submitted' page