Feature: User who has entered a valid code from Data Table Z Only, and has selected IA variation type, Uploads dossier
    Description:
        Reference: BPL-1032B
        Jira: GS-134

    Background: Given the user has completed the GS-133 steps

    @BPL-1032B
    Scenario: User is directed to the 'Upload Dossier' page
        Given the user has been directed to the 'Upload Dossier' page
        When page 'Upload Dossier' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Renewal of marketing authorisation'
        And a page header 'Upload Dossier'
        And they will see Text 'The selected file must be a zip file and smaller than 2gb'
        And a 'Choose file' button
        And they will see Text 'No file chosen'
        And they will see a 'Upload file and continue' option

    @BPL-1032B-1
    Scenario: User Uploads a file
        Given the user has been directed to the 'Upload Dossier' page
        And the user has selected 'a file to upload'
        When they select 'Upload file and continue'
        Then they will be directed to the 'Application Contact Information' page

    @BPL-1032B-2
    Scenario: User does not upload a file
        Given the user has been directed to the 'Upload Dossier' page
        And they have not selected any 'file to upload'
        When they select 'Upload file and continue'
        Then they will see an error message containing 'Choose a file to continue'
        And they will not be able to continue