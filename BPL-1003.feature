Feature: User selects procedure option 
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1003
        Jira: GS-95

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure Options' page

    @BPL-1003-1
    Scenario: User selects 'One change to several products' option
        And they will see a page header 'Select procedure option'
        And they will see a radio button option for 'One change to one product'
        And they will see a radio button option for 'One change to several products'
        And a 'Continue' button
        When they select the 'One change to several products' option and click continue
        Then they are directed to the 'Variation Single Multiple-Products Select Products' page