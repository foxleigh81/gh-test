Feature: User who has entered a valid code from Data Table Z Only and has selected variation type IA describes proposed changes
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5226
        Jira: GS-1181

    Background:
        Given the user has completed the PL-5225 steps

    @FPL-5226-1
    Scenario: Use who has entered a valid code from Data Table Z Only is directed to the 'Describe Changes' page 
        And the user has been directed to the 'Describe changes' page
        When page 'Describe changes' loads
        Then a page header 'Describe the proposed change'
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And they will see a 'Continue' option

    @FPL-5226-2
    Scenario: User Enters proposed changes
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And the user has entered 'Present text' into the MISSING VALUE text area
        And the user has entered 'Outline the present situation' into the MISSING VALUE text area
        When the user has selected 'Proposed text'
        Then they are directed to the 'Outline the proposed situation' page

    @FPL-5226-3
    Scenario: User does not enter proposed changes text
        And the user has not entered 'Present text' into the MISSING VALUE text area
        And the user has not entered 'Outline the present situation' into the MISSING VALUE text area
        When the user has selected 'Proposed text'
        Then they will see an error message containing 'Outline the proposed situation'
        And they will not be able to continue

    @FPL-5226-4
    Scenario: User completes all mandatory fields
        And the user has been directed to the 'Application Contact Details' page
        And there is a non-empty string in all mandatory fields
        When they select 'Continue'
        Then they are directed to the 'Application Finance Details' page

    @FPL-5226-5
    Scenario: User does not complete all mandatory fields
        And the user has been directed to the 'Application Contact Details' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'Complete all mandatory fields to continue'
        And they will not be able to continue