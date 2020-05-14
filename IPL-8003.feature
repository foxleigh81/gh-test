Feature: User selects procedure option
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8003

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Workshare' option and click continue
        And they are directed to the 'Variation Workshare Procedure Options' page

    @IPL-8003-1
    Scenario: User selects 'Several changes to several unrelated products' option
        And they will see a page header 'Select procedure option'
        And they will see a radio button option for 'One change to several unrelated products'
        And they will see a radio button option for 'Several changes to several unrelated products'
        And a 'Continue' button
        When they select the 'Several changes to several unrelated products' option and click continue
        Then they will be directed to the 'Variation Workshare One-Change Multiple-Products Select-Products' page

    @IPL-8003-2
    Scenario: User does not select procedure option
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Workshare Select-Procedure-Option' page
        And they will see a warning message stating 'Select a procedure option'
        And they will not be able to continue