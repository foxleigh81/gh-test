Feature: User selects procedure type 
    Description:
        Epic: Procedure G: IB/II - sev ch, sev rel prds 
        Reference: GPL-6001

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page

    @GPL-6001-1
    Scenario: User selects 'Group of Type IB/II changes' procedure type
        And they will see a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of Type IA changes'
        And they will see a radio button option for 'Group of Type IB/II changes'
        And they will see a radio button option for 'Workshare'
        When they select the 'Group of Type IB/II changes' option and click continue
        Then they will be directed to the 'Variation Type IB/II Procedure-Options' page

    @GPL-6001-2
    Scenario: User does not select procedure type
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Select-Procedure-Type' page
        And they will see a warning message stating 'Select procedure type'
        And they will not be able to continue