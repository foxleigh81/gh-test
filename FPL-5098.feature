Feature: User who has entered a valid code from Data Table IB Only, II Only, No Variations, or Z Special and a second from Data Table Z Only and has selected variation type IA  describes the proposed changes
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5098

    Background: Given the user has completed the PL-5097 steps

    @FPL-5098
    Scenario: User directed to 'Describe Changes' page 
        Given the user has been directed to the 'Describe changes' page
        When page 'Describe changes' loads
        Then a page header 'Describe the proposed change'
        And the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And they will see a 'Continue' option

    @FPL-5098-1
    Scenario: User Enters proposed changes
        Given the user can see the 'Outline the present situation' text area
        And the user can see the 'Outline the proposed situation' text area
        And the user has entered 'Present text' into the 'Outline the present situation' text area
        And the user has entered 'Proposed text' into the 'Outline the proposed situation' text area
        When the user has selected 'Continue'
        Then they will be directed to the 'Supporting Documents' page

    @FPL-5098-2
    Scenario: User does not enter proposed changes text
        Given the user has not entered 'Present text' into the 'Outline the present situation' text area
        And the user has not entered 'Proposed text' into the 'Outline the proposed situation' text area
        When the user has selected 'Continue'
        Then they will see an error message containing 'Describe changes to continue'
        And they will not be able to continue