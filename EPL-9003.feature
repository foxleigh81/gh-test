Feature: User selects procedure option 
    Description:
        Reference: EPL-9003

    Background: Given the user has completed the PL-9001 steps

    @EPL-9003
    Scenario: User directed to 'Procedure Option Type IA' page
        Given the user has been directed to the 'Procedure Option Type IA' page
        When page 'Procedure Option Type IA' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Select procedure option'
        And they will see a radio button option for 'Several changes to one product'
        And they will see a radio button option for 'One change to several unrelated products'
        And they will see a radio button option for 'Several changes to several unrelated products'
        And they will see a 'Continue' option

    @EPL-9003-1
    Scenario: User selects 'Several changes to several unrelated products'
        Given the user has been directed to the 'Procedure Option Type IA' page
        And the user has selected 'Several changes to several unrelated products'
        When they select 'Continue'
        Then they will be directed to the 'Select Product 2' page