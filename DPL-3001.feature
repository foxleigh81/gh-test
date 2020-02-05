Feature: User selects procedure type 
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-3001

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page

    @DPL-3001-1
    Scenario: User selects 'Group of Type IA changes' procedure type
        And they will see a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of Type IA changes'
        And they will see a radio button option for 'Group of Type IB/II changes'
        And they will see a radio button option for 'Workshare'
        When they select the 'Single' option and click continue
        Then they are directed to the 'Variation Type IA Procedure Options' page

    @DPL-3001-2
    Scenario: User does not select procedure type
        When they click the 'Continue' button
        Then they are directed to the 'Variation Select Procedure Type' page
        And they will see a warning message stating 'Please select a procedure type'