Feature: User who has entered a valid code from Data Table IA + IB and has selected IB variation type submits the application
    Description:
        Reference: APL-0023F

    Background: Given the user has completed the PL-0023D steps

    @APL-0023F
    Scenario: User is directed to the 'Declaration' page
        Given the user has been directed to the 'Declaration' page
        When page 'Declaration' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Declaration'
        And they will see Text 'By submitting this application you confirm that the information you've provided is correct at the time of submission'
        And they will see Text '! If any information provided in this application is later found to be false or incorrect, the Secretary of State may suspend or revoke the authorisation'
        And they will see a 'Agree and submit application' option

    @APL-0023F-1
    Scenario: User selects the 'Agree and submit application' option
        Given the user has been directed to the 'Declaration' page
        And they can see a 'Agree and submit application' option
        When they select 'Agree and submit application'
        Then they will be directed to the 'Application Submitted'  page