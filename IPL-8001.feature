Feature: User selects procedure type
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8001

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page

    @IPL-8001-1
    Scenario: User selects 'Workshare' procedure type
        And they will see a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of Type IA changes'
        And they will see a radio button option for 'Group of Type IB/II changes'
        And they will see a radio button option for 'Workshare'
        When they select the 'Workshare' option and click continue
        Then they will be directed to the 'Variation Workshare Procedure-Options' page

    @IPL-8001-2
    Scenario: User does not select procedure type
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Select-Procedure-Type' page
        And they will see a warning message stating 'Select procedure type'
        And they will not be able to continue