Feature: User selects procedure option 
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5003
        Jira: GS-508

    Background: Given the user has completed the GS-507 steps

    @FPL-5003
    Scenario: User directed to 'Procedure Option Type IB/II/Extension' page
        Given the user has been directed to the 'Procedure Option Type IB/II/Extension' page
        When page 'Procedure Option Type IB/II/Extension' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Select procedure option'
        And they will see a radio button option for 'Several changes to one product'
        And they will see a radio button option for 'Several changes to several related products'
        And they will see a 'Continue' option

    @FPL-5003-1
    Scenario: User selects 'Several changes to one product'
        Given the user has been directed to the 'Procedure Option Type IB/II/Extension' page
        And the user has selected 'Several changes to one product'
        When they select 'Continue'
        Then they will be directed to the 'Select Product 1' page