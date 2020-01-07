Feature: User who has entered a valid code from Data Table IA + IB, and has selected IB variation type, describes the proposed changes
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1023
        Jira: GS-134

    Background:
        Given the user has completed the PL-1018 steps

    @BPL-1023-1
    Scenario: User who has entered a valid code from Data Table IA + IB and has selected IB is directed to the 'Describe Changes' page 
        And the user has been directed to the 'Describe changes' page
        When page 'Describe changes' loads
        Then a page header 'Describe the proposed change'
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And they will see a 'Continue' option

    @BPL-1023-2
    Scenario: User Enters proposed changes
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And the user has entered 'Present text' into the 'Outline the present situation' text area
        And the user has entered 'Proposed text' into the 'Outline the proposed situation' text area
        When the user has selected 'Continue'
        Then they are directed to the 'Check Your Answers' page

    @BPL-1023-3
    Scenario: User does not enter proposed changes text
        And the user has not entered 'Present text' into the 'Outline the present situation' text area
        And the user has not entered 'Proposed text' into the 'Outline the proposed situation' text area
        When the user has selected 'Continue'
        Then they will see an error message containing 'Describe changes to continue'
        And they will not be able to continue