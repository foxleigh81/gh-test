Feature: User selects procedure type 
    Description:
        Epic: Procedure H: Workshare 1 ch, sev un prds
        Reference: HPL-7001

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page

    @HPL-7001-1
    Scenario: User selects 'single' procedure type
        And they will see a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of Type IA changes'
        And they will see a radio button option for 'Group of Type IB/II changes'
        And they will see a radio button option for 'Workshare'
        When they select the 'Workshare' option and click continue
        Then they are directed to the 'Variation Workshare Procedure-Options' page

    @HPL-7001-2
    Scenario: User does not select procedure type
        When they click the 'Continue' button
        Then they are directed to the 'Variation Select Procedure Type' page
        And they will see a warning message stating 'Select a procedure type'
        And they will not be able to continue