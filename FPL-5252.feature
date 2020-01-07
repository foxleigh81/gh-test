Feature: User who has entered a valid code from Data Table Z Only and has selected variation type IA, and a second variation code from Data Table IA + IB and has selected Variation type IB describes the proposed changes
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5252
        Jira: GS-1256

    Background:
        Given the user has completed the PL-5244 steps

    @FPL-5252-1
    Scenario: User who has entered a valid code from Data Table Z Only and has selected variation type IA, and a second variation code from Data Table IA + IB and has selected Variation type IB  is directed to 'Describe Changes' page 
        And the user has been directed to the 'Describe changes' page
        When page 'Describe changes' loads
        Then a page header 'Describe the proposed change'
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And they will see a 'Continue' option

    @FPL-5252-2
    Scenario: User Enters proposed changes
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And the user has entered 'Present text' into the 'Outline the present situation' text area
        And the user has entered 'Proposed text' into the 'Outline the proposed situation' text area
        When the user has selected 'Continue'
        Then they are directed to the 'Application Summary' page

    @FPL-5252-3
    Scenario: User does not enter proposed changes text
        And the user has not entered 'Present text' into the 'Outline the present situation' text area
        And the user has not entered 'Proposed text' into the 'Outline the proposed situation' text area
        When the user has selected 'Continue'
        Then they will see an error message containing 'Describe changes to continue'
        And they will not be able to continue