Feature: User selects procedure type 
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0001
        Jira: GS-2

    Background: Given the user has completed the GS-1 steps

    @APL-0001
    Scenario: User directed to Procedure Type page
        Given the user has been directed to the 'Procedure type' page
        When page 'Procedure type' loads
        Then a page header 'Select procedure type'
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