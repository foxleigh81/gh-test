Feature: User selects procedure option 
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1003
        Jira: GS-95

    Background: Given the user has completed the GS-94 steps

    @BPL-1003
    Scenario: User directed to Procedure Option Type Single page
        Given the user has been directed to the 'Procedure Option Type Single' page
        When page 'Procedure Option Type Single' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Select procedure option'
        And they will see a radio button option for 'One change to one product'
        And they will see a radio button option for 'One change to several related products'
        And they will see a 'Continue' option

    @BPL-1003-1
    Scenario: User selects 'Single change to several products'
        Given the user has been directed to the 'Procedure Option Type Single' page
        And the user has selected 'One change to several related products'
        When they select 'Continue'
        Then they will be directed to the 'Select Product 2' page