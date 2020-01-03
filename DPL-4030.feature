Feature: User who has entered a valid code from Data Table IA Only and a second variation  code from Data Table Z Only describes the proposed changes
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-4030
        Jira: GS-278

    Background:
        Given the user has completed the PL-4029 steps

    @DPL-4030-1
    Scenario: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only is directed to 'Describe Changes' page 
        And the user has been directed to the 'Describe changes' page
        When page 'Describe changes' loads
        Then a page header 'Describe the proposed change'
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And they will see a 'Continue' option

    @DPL-4030-2
    Scenario: User Enters proposed changes
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And the user has entered 'Present text' into the MISSING VALUE text area
        And the user has entered 'Outline the present situation' into the MISSING VALUE text area
        When the user has selected 'Proposed text'
        Then they are directed to the 'Outline the proposed situation' page

    @DPL-4030-3
    Scenario: User does not enter proposed changes text
        And the user has not entered 'Present text' into the MISSING VALUE text area
        And the user has not entered 'Outline the present situation' into the MISSING VALUE text area
        When the user has selected 'Proposed text'
        Then they will see an error message containing 'Outline the proposed situation'
        And they will not be able to continue