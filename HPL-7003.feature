Feature: User selects procedure option 
    Description:
        Epic: Procedure H: Workshare 1 ch, sev un prds
        Reference: HPL-7003

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Workshare' option and click continue
        And they are directed to the 'Variation Workshare Procedure Options' page

    @HPL-7003-1
    Scenario: User selects 'One change to several unrelated products' option
        And they will see a page header 'Select procedure option'
        And they will see a radio button option for 'One change to several unrelated products'
        And they will see a radio button option for 'Several changes to several unrelated products'
        And a 'Continue' button
        When they select the 'One change to several unrelated products' option and click continue
        Then they will be directed to the 'Variation Workshare One-Change Multiple-Products Select-Products' page

    @HPL-7003-2
    Scenario: User does not select procedure option
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Workshare Select-Procedure-Option' page
        And they will see a warning message stating 'Select a procedure option'
        And they will not be able to continue