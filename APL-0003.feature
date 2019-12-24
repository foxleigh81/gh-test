Feature: User selects procedure option 
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0003
        Jira: GS-3

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Select Variation Procedure Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure Options' page

    @APL-0003-1
    Scenario: User selects 'one change to one product' option
        And a page header 'Select procedure option'
        And they will see a radio button option for 'One change to one product'
        And they will see a radio button option for 'One change to several products'
        And a 'Continue' button
        When they select the 'One change to one product' option and click continue
        Then they are directed to the 'Variation Single One-Product Select Products' page