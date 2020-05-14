Feature: User selects procedure type 
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-4001
        Jira: GS-222

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page

    @EPL-4001-1
    Scenario: User selects 'Group of Type IA changes' procedure type
        And they will see a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of Type IA changes'
        And they will see a radio button option for 'Group of Type IB/II changes'
        And they will see a radio button option for 'Workshare'
        When they select the 'Single' option and click continue
        Then they will be directed to the 'Variation Type IA Procedure Options' page

    @EPL-4001-2
    Scenario: User does not select procedure type
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Select-Procedure-Type' page
        And they will see a warning message stating 'Please select a procedure type'
        And they will not be able to continue