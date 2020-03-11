Feature: User selects procedure type 
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2001
        Jira: GS-188

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page

    @CPL-2001-1
    Scenario: User selects 'Group of Type IA changes' procedure type
        And they will see a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of Type IA changes'
        And they will see a radio button option for 'Group of Type IB/II changes'
        And they will see a radio button option for 'Workshare'
        When they select the 'Group of Type IA changes' option and click continue
        Then they are directed to the 'Variation Type IA Procedure Options' page

    @CPL-2001-2
    Scenario: User does not select procedure type
        When they click the 'Continue' button
        Then they are directed to the 'Variation Select Procedure Type' page
        And they will see a warning message stating 'Please select a procedure type'
        And they will not be able to continue