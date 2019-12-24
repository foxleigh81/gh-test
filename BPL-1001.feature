Feature: User selects procedure type 
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1001
        Jira: GS-94

    Background:
        Given the user has completed the PL-1000 steps

    @BPL-1001-1
    Scenario: User directed to Procedure Type page 
        And the user has been directed to the 'Procedure type' page
        When page 'Procedure type' loads
        Then a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of IA changes'
        And they will see a radio button option for 'Group of Type IB/II/Extension changes'
        And they will see a radio button option for 'Workshare'
        And undefined

    @BPL-1001-2
    Scenario: User selects procedure type single
        And the user has been directed to the 'Procedure Type' page
        And the user has selected 'Single'
        When they select 'Continue'
        Then they are directed to the 'Procedure Option Type Single' page