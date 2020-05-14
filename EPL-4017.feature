Feature: User agrees and submits the application
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-4017
        Jira: GS-259

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they navigate to the 'Variation Type IA Several-Changes Multiple-Products Declaration' page
        And they can see a page header 'Declaration'

    @EPL-4017-1
    Scenario: User selects 'Agree and submit'
        When they click the 'Agree and Submit' button
        Then they will be directed to the 'Application Submitted' page