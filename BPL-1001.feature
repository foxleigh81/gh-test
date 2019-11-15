Feature: User selects procedure type 
    Description:
        Reference: BPL-1001
    
    Background: Given the user has completed the PL-1000 steps

    @BPL-1001
    Scenario: User directed to Procedure Type page 
        Given the user has been directed to the 'Procedure type' page
        When page 'Procedure type' loads
        Then a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of IA changes'
        And they will see a radio button option for 'Group of Type IB/II/Extension changes'
        And they will see a radio button option for 'Workshare'
        And they will see a 'Continue' option

    @BPL-1001-1
    Scenario: User selects procedure type single
        Given the user has been directed to the 'Procedure Type' page
        And the user has selected 'Single'
        When they select 'Continue'
        Then they will be directed to the 'Procedure Option Type Single' page