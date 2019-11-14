Feature: User selects procedure type 
    Description:
        Reference: APL-0001
    
    Background: Given the user has completed the PL-0000 steps

    @APL-0001
    Scenario: User directed to Procedure Type page 
        Given the user has been directed to the 'Procedure type' page
        When page 'Procedure type' loads
        Then they will see a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of IA changes'
        And they will see a radio button option for 'Group of Type IB/II/Extension changes'
        And they will see a radio button option for 'Workshare'
        And they will see a 'Continue' option

    @APL-0001-1
    Scenario: User selects procedure type single
        Given the user has been directed to the 'Procedure Type' page
        And the user has selected 'Single'
        When they select 'Continue'
        Then they will be directed to the 'Procedure Option Type Single' page