Feature: User selects procedure type 
    Description:
        Reference: DPL-4001
        Jira: GS-201

    Background: Given the user has completed the GS-200 steps

    @DPL-4001
    Scenario: User directed to Procedure Type page 
        Given the user has been directed to the 'Procedure type' page
        When page 'Procedure type' loads
        Then a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of IA changes'
        And they will see a radio button option for 'Group of Type IB/II/Extension changes'
        And they will see a radio button option for 'Workshare'
        And they will see a 'Continue' option

    @DPL-4001-1
    Scenario: User selects procedure type 'Group of IA changes'
        Given the user has been directed to the 'Procedure Type' page
        And the user has selected 'Group of IA changes'
        When they select 'Continue'
        Then they will be directed to the 'Procedure Option Type IA' page