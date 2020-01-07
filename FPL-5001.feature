Feature: User selects procedure type 
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5001
        Jira: GS-507

    Background:
        Given the user has completed the PL-5000 steps

    @FPL-5001-1
    Scenario: User directed to Procedure Type page 
        And the user has been directed to the 'Procedure type' page
        When page 'Procedure type' loads
        Then a page header 'Select procedure type'
        And they will see a radio button option for 'Single'
        And they will see a radio button option for 'Group of IA changes'
        And they will see a radio button option for 'Group of Type IB/II/Extension changes'
        And they will see a radio button option for 'Workshare'
        And undefined

    @FPL-5001-2
    Scenario: User selects procedure type Group of Type IB/II/Extension changes
        And the user has been directed to the 'Procedure Type' page
        And the user has selected 'Group of Type IB/II/Extension changes'
        When they select 'Continue'
        Then they are directed to the 'Procedure Option Type IB/II/Extension' page