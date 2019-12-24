Feature: User who has entered a valid code from Data Table IA + IB and a second variation code from Data Table Z Only Uploads dossier
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-4062
        Jira: GS-326

    Background:
        Given the user has completed the PL-4061 steps

    @DPL-4062-1
    Scenario: User is directed to the 'Upload Dossier' page
        And the user has been directed to the 'Upload Dossier' page
        When page 'Upload Dossier' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Renewal of marketing authorisation'
        And a page header 'Upload Dossier'
        And they will see Text 'The selected file must be a zip file and smaller than 2gb'
        And a 'Choose file' button
        And they will see Text 'No file chosen'
        And they will see a 'Upload file and continue' option

    @DPL-4062-2
    Scenario: User Uploads a file
        And the user has been directed to the 'Upload Dossier' page
        And the user has selected 'a file to upload'
        When they select 'Upload file and continue'
        Then they are directed to the 'Application Contact Details' page

    @DPL-4062-3
    Scenario: User does not upload a file
        And the user has been directed to the 'Upload Dossier' page
        And they have not selected any 'file to upload'
        When they select 'Upload file and continue'
        Then they will see an error message containing 'Choose a file to continue'
        And they will not be able to continue