Feature: User selects procedure type
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8001

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page

    @IPL-8001-1
    @TestData::template layoutHasHeader4RbAndContinue 'Select procedure type'|'Single'|'Group of Type IA changes'|'Group of Type IB/II changes'|'Workshare'
    Scenario: User selects 'Workshare' procedure type
        
        Missing cells unable to complete step
        When they select the 'Workshare' option and click continue
        Then they are directed to the 'Variation Workshare Procedure-Options' page

    @IPL-8001-2
    Scenario: User does not select procedure type
        When they click the 'Continue' button
        Then they are directed to the 'Variation Select Procedure Type' page
        And they will see a warning message stating 'Select procedure type'
        And they will not be able to continue