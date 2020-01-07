Feature: User who has entered a valid code from Data Table IB Only, II Only, No Variations, or Z Special and a second from Data Table Z Only and has selected variation type IA  submits the application
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5104
        Jira: GS-838

    Background:
        Given the user has completed the PL-5103 steps

    @FPL-5104-1
    Scenario: User is directed to the 'Declaration' page
        And the user has been directed to the 'Declaration' page
        When page 'Declaration' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Declaration'
        And they will see Text 'By submitting this application you confirm that the information you've provided is correct at the time of submission'
        And they will see Text '! If any information provided in this application is later found to be false or incorrect, the Secretary of State may suspend or revoke the authorisation'
        And they will see a 'Agree and submit application' option

    @FPL-5104-2
    Scenario: User selects the 'Agree and submit application' option
        And the user has been directed to the 'Declaration' page
        And they can see a 'Agree and submit application' option
        When they select 'Agree and submit application'
        Then they are directed to the 'Application Submitted'  page