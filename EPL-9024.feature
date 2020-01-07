Feature: User who has entered a valid code from Data Table IA Only  and a second variation code from Data Table IA + IB Uploads dossier
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9024
        Jira: GS-401

    Background:
        Given the user has completed the PL-9023 steps

    @EPL-9024-1
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

    @EPL-9024-2
    Scenario: User Uploads a file
        And the user has been directed to the 'Upload Dossier' page
        And the user has selected 'a file to upload'
        When they select 'Upload file and continue'
        Then they are directed to the 'Application Contact Details' page

    @EPL-9024-3
    Scenario: User does not upload a file
        And the user has been directed to the 'Upload Dossier' page
        And they have not selected any 'file to upload'
        When they select 'Upload file and continue'
        Then they will see an error message containing 'Choose a file to continue'
        And they will not be able to continue