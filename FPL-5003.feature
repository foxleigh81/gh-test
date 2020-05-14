Feature: User selects procedure option 
    Description:
        Epic: Procedure F: IB/II - sev ch, 1  prd 
        Reference: FPL-5003
        Jira: GS-508

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Group of IB/II changes' option and click continue
        And they are directed to the 'Variation Type IB/II Procedure-Options' page

    @FPL-5003-1
    Scenario: User selects 'Several changes to one product' option
        And they will see a page header 'Select procedure option'
        And they will see a radio button option for 'Several changes to one product'
        And they will see a radio button option for 'Several changes to several related products'
        And a 'Continue' button
        When they select the 'Several changes to one product' option and click continue
        Then they will be directed to the 'Variation Type IB/II Several-Changes One-Product Select-Product-1' page

    @FPL-5003-2
    Scenario: User does not select procedure option
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Type IB/II Select-Procedure-Option' page
        And they will see a warning message stating 'Select a procedure option'
        And they will not be able to continue