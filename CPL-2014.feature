Feature: User who has entered a valid code from Data Table IA + IB Only describes proposed changes
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2014
        Jira: GS-203

    Background:
        Given the user has completed the PL-2013 steps

    @CPL-2014-1
    Scenario: Use who has entered a valid code from Data Table IA + IB Only is directed to the 'Describe Changes' page 
        And the user has been directed to the 'Describe changes' page
        When page 'Describe changes' loads
        Then a page header 'Describe the proposed change'
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And they will see a 'Continue' option

    @CPL-2014-2
    Scenario: User Enters proposed changes
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And the user has entered 'Present text' into the MISSING VALUE text area
        And the user has entered 'Outline the present situation' into the MISSING VALUE text area
        When the user has selected 'Proposed text'
        Then they are directed to the 'Outline the proposed situation' page

    @CPL-2014-3
    Scenario: User does not enter proposed changes text
        And the user has not entered 'Present text' into the MISSING VALUE text area
        And the user has not entered 'Outline the present situation' into the MISSING VALUE text area
        When the user has selected 'Proposed text'
        Then they will see an error message containing 'Outline the proposed situation'
        And they will not be able to continue