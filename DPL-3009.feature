Feature: User who has enterered a valid code from Data Table IA Only describes proposed changes
    Description:
        Reference: DPL-3009
    
    Background: Given the user has completed the PL-3008 steps

    @DPL-3009
    Scenario: User directed to 'Describe Changes' page 
        Given the user has been directed to the 'Describe changes' page
        When page 'Describe changes' loads
        Then they will see a page header 'Describe the proposed change'
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And they will see a 'Continue' option

    @DPL-3009-1
    Scenario: User Enters proposed changes
        Given the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And the user has entered 'Present text' into the 'Outline the present situation' text area
        And the user has entered 'Proposed text' into the 'Outline the proposed situation' text area
        When the user has selected 'Continue'
        Then they will be directed to the 'Application Summary 1' page

    @DPL-3009-2
    Scenario: User does not enter proposed changes text
        Given the user has not entered 'Present text' into the 'Outline the present situation' text area
        And the user has not entered 'Proposed text' into the 'Outline the proposed situation' text area
        When the user has selected 'Continue'
        Then they will see an error message containing 'Describe changes to continue'
        And they will not be able to continue