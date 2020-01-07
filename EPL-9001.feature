Feature: User selects procedure type 
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9001
        Jira: GS-375

    Background:
        Given the user has completed the PL-9000 steps

    @EPL-9001-1
    Scenario: User directed to Procedure Type page 
        And the user has been directed to the 'Procedure type' page
        When page 'Procedure type' loads
        Then a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of IA changes'
        And they will see a radio button option for 'Group of Type IB/II/Extension changes'
        And they will see a radio button option for 'Workshare'
        And undefined

    @EPL-9001-2
    Scenario: User selects procedure type 'Group of IA changes'
        And the user has been directed to the 'Procedure Type' page
        And the user has selected 'Group of IA changes'
        When they select 'Continue'
        Then they are directed to the 'Procedure Option Type IA' page