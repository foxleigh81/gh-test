Feature: User selects procedure option 
    Description:
        Reference: APL-0003
    
    Background: Given the user has completed the PL-0001 steps

    @APL-0003
    Scenario: User directed to Procedure Option Type Single page
        Given the user has been directed to the 'Procedure Option Type Single' page
        When page 'Procedure Option Type Single' loads
        Then they will see a 'Back' link
        And they will see a 'Sign out' link
        And they will see a sub header 'Vary a marketing authorisation'
        And they will see a page header 'Select procedure option'
        And they will see a radio button option for 'One change to one product'
        And they will see a radio button option for 'One change to several products'
        And they will see a 'Continue' option

    @APL-0003-1
    Scenario: User selects 'Single change to one product'
        Given the user has been directed to the 'Procedure Option Type Single' page
        And the user has selected 'Single change to one product'
        When they select 'Continue'
        Then they will be directed to the 'Select Product 1' page