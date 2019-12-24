Feature: User selects procedure option 
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-4003
        Jira: GS-243

    Background:
        Given the user has completed the PL-4001 steps

    @DPL-4003-1
    Scenario: User directed to 'Procedure Option Type IA' page
        And the user has been directed to the 'Procedure Option Type IA' page
        When page 'Procedure Option Type IA' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Select procedure option'
        And they will see a radio button option for 'Several changes to one product'
        And they will see a radio button option for 'One change to several unrelated products'
        And they will see a radio button option for 'Several changes to several unrelated products'
        And they will see a 'Continue' option

    @DPL-4003-2
    Scenario: User selects 'Several changes to one product'
        And the user has been directed to the 'Procedure Option Type IA' page
        And the user has selected 'Several changes to one product'
        When they select 'Continue'
        Then they are directed to the 'Select Product 1' page